import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/backend/backend_client.dart';
import '../../core/share/share_text.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../billing/plan.dart';
import 'account_controller.dart';

/// „Hívd meg a barátaidat”: a saját ajánlókód másolással és megosztással,
/// hány barát váltotta be, és – ha még nem tette – egy barát kódjának beváltása.
class ReferralCard extends StatefulWidget {
  const ReferralCard({super.key, required this.backend, required this.account});

  final BackendClient backend;
  final AccountController account;

  @override
  State<ReferralCard> createState() => _ReferralCardState();
}

class _ReferralCardState extends State<ReferralCard> {
  late Future<ReferralInfo> _info = widget.backend.referral();

  /// Sikeres beváltás után azonnal eltűnik a gomb (a szerver szerinti adat a
  /// háttérben frissül).
  bool _redeemedNow = false;

  void _reload() {
    final next = widget.backend.referral();
    setState(() {
      _info = next;
    });
  }

  Future<void> _copy(String code) async {
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    await Clipboard.setData(ClipboardData(text: code));
    messenger.showSnackBar(SnackBar(content: Text(l10n.referralCopied)));
  }

  Future<void> _redeem(ReferralInfo info) async {
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final tierBefore = widget.account.entitlements.state.tier;
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => _RedeemDialog(account: widget.account),
    );
    if (ok != true || !mounted) return;
    // Tesztelői kód: extra elemzés helyett csomagot ad.
    final tierAfter = widget.account.entitlements.state.tier;
    final plan = tierAfter != tierBefore && tierAfter != null && tierAfter != PlanTier.trial;
    messenger.showSnackBar(SnackBar(content: Text(plan ? l10n.purchaseSuccess : l10n.referralRedeemed(info.bonus))));
    setState(() => _redeemedNow = true);
    _reload();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Card(
      key: const ValueKey('referral-card'),
      child: FutureBuilder<ReferralInfo>(
        future: _info,
        builder: (context, snap) {
          final info = snap.data;
          if (info == null) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: snap.hasError
                  ? TextButton.icon(
                      onPressed: _reload,
                      icon: const Icon(Icons.refresh_rounded),
                      label: Text(l10n.retry),
                    )
                  : const Center(
                      child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)),
                    ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.card_giftcard_rounded, color: p.accent),
                    const SizedBox(width: 10),
                    Expanded(child: Text(l10n.referralBody(info.bonus), style: theme.textTheme.bodyMedium)),
                  ],
                ),
                const SizedBox(height: 14),
                Text(l10n.referralYourCode, style: theme.textTheme.labelMedium?.copyWith(color: p.muted)),
                const SizedBox(height: 4),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Text(
                      info.code,
                      key: const ValueKey('referral-code'),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                        color: p.accent,
                      ),
                    ),
                    IconButton(
                      tooltip: MaterialLocalizations.of(context).copyButtonLabel,
                      icon: const Icon(Icons.copy_rounded, size: 20),
                      onPressed: () => _copy(info.code),
                    ),
                    Builder(
                      builder: (btn) => FilledButton.tonalIcon(
                        key: const ValueKey('referral-share'),
                        onPressed: () => shareText(
                          l10n.referralShareText(info.code, info.bonus),
                          subject: 'WhatStock',
                          origin: shareOriginOf(btn),
                        ),
                        icon: const Icon(Icons.ios_share_rounded, size: 18),
                        label: Text(MaterialLocalizations.of(context).shareButtonLabel),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.referralStats(info.invited, info.rewarded),
                  style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                ),
                if (!info.redeemed && !_redeemedNow) ...[
                  const SizedBox(height: 6),
                  TextButton(
                    key: const ValueKey('referral-have-code'),
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () => _redeem(info),
                    child: Text(l10n.referralHaveCode),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _RedeemDialog extends StatefulWidget {
  const _RedeemDialog({required this.account});

  final AccountController account;

  @override
  State<_RedeemDialog> createState() => _RedeemDialogState();
}

class _RedeemDialogState extends State<_RedeemDialog> {
  final _code = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    if (_code.text.trim().isEmpty || _busy) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.account.redeemReferral(_code.text);
      if (mounted) Navigator.of(context).pop(true);
    } on BackendException catch (e) {
      setState(
        () => _error = switch (e.code) {
          'own_code' => l10n.referralErrOwn,
          'already_redeemed' => l10n.referralErrAlready,
          _ => l10n.referralErrUnknown,
        },
      );
    } catch (_) {
      setState(() => _error = l10n.errorGeneric);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(l10n.referralHaveCode),
      content: TextField(
        key: const ValueKey('referral-input'),
        controller: _code,
        autofocus: true,
        textCapitalization: TextCapitalization.characters,
        autocorrect: false,
        onSubmitted: (_) => _submit(),
        decoration: InputDecoration(hintText: 'WS-XXXXXX', errorText: _error, errorMaxLines: 3),
      ),
      actions: [
        TextButton(
          onPressed: _busy ? null : () => Navigator.of(context).pop(false),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        FilledButton(
          key: const ValueKey('referral-redeem'),
          onPressed: _busy ? null : _submit,
          child: Text(l10n.referralRedeem),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/backend/backend_client.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';

/// Zárt előzetes: a szerver csak meghívókóddal enged be. A kódot a
/// felhasználó egyszer írja be; a készülék megjegyzi.
class InvitePage extends StatefulWidget {
  const InvitePage({super.key, required this.backend, required this.problem});

  final BackendClient backend;
  final InviteProblem problem;

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  final _code = TextEditingController();
  bool _busy = false;
  InviteProblem? _error;

  @override
  void initState() {
    super.initState();
    // Ha már volt mentett kód, a szerver üzenete (lejárt, túl sok eszköz) számít.
    if (widget.problem != InviteProblem.required) _error = widget.problem;
  }

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final code = _code.text.trim();
    if (code.isEmpty || _busy) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final services = AppServices.of(context);
      await widget.backend.submitInvite(code);
      // A szerver szerinti csomag és keret betöltése (eddig nem érhette el).
      services.syncEntitlements();
    } on BackendException catch (e) {
      if (mounted) setState(() => _error = BackendClient.inviteProblemFor(e.code) ?? InviteProblem.invalid);
    } catch (_) {
      if (mounted) setState(() => _error = InviteProblem.invalid);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  static String message(AppLocalizations l10n, InviteProblem p) => switch (p) {
    InviteProblem.required || InviteProblem.invalid => l10n.inviteInvalid,
    InviteProblem.expired => l10n.inviteExpired,
    InviteProblem.deviceLimit => l10n.inviteDeviceLimit,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final error = _error;
    return Scaffold(
      body: SafeArea(
        child: CenteredScroll(
          maxWidth: 440,
          padding: const EdgeInsets.fromLTRB(24, 64, 24, 32),
          builder: (context, padding) => ListView(
            padding: padding,
            children: [
              Center(child: Image.asset('assets/branding/logo_128.png', width: 64, height: 64)),
              const SizedBox(height: 24),
              Text(l10n.inviteTitle, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall),
              const SizedBox(height: 12),
              Text(
                l10n.inviteBody,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(color: p.muted),
              ),
              const SizedBox(height: 28),
              TextField(
                key: const ValueKey('invite-code'),
                controller: _code,
                enabled: !_busy,
                autofocus: true,
                autocorrect: false,
                enableSuggestions: false,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _submit(),
                decoration: InputDecoration(
                  labelText: l10n.inviteCodeLabel,
                  prefixIcon: const Icon(Icons.vpn_key_outlined),
                  errorText: error == null ? null : message(l10n, error),
                  errorMaxLines: 3,
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _busy ? null : _submit,
                child: _busy
                    ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                    : Text(l10n.inviteContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Vízjel minden képernyő alján: kinek szól ez az előzetes példány. Egy
/// kiszivárgott képernyőképről is kiderül, kitől származik.
class PreviewWatermark extends StatelessWidget {
  const PreviewWatermark({super.key, required this.invite});

  final InviteInfo invite;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final text = invite.expires == null
        ? l10n.previewFor(invite.label)
        : '${l10n.previewFor(invite.label)} · ${invite.expires}';
    return Material(
      color: p.sidebar,
      child: SafeArea(
        top: false,
        child: Container(
          key: const ValueKey('preview-watermark'),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: p.border)),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11, color: p.muted, letterSpacing: 0.2),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/backend/backend_client.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'account_controller.dart';

/// Belépés, mint a Claude-nál: e-mail cím, majd a kiküldött 6 jegyű kód.
/// Igazzal tér vissza, ha sikerült.
Future<bool> showSignInSheet(BuildContext context, AccountController account) async {
  final wide = MediaQuery.sizeOf(context).width >= 700;
  final body = _SignInFlow(account: account);
  final ok = wide
      ? await showDialog<bool>(
          context: context,
          builder: (_) => Dialog(
            child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 440), child: body),
          ),
        )
      : await showModalBottomSheet<bool>(
          context: context,
          isScrollControlled: true,
          showDragHandle: true,
          builder: (ctx) => Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(ctx).bottom),
            child: body,
          ),
        );
  return ok ?? false;
}

class _SignInFlow extends StatefulWidget {
  const _SignInFlow({required this.account});

  final AccountController account;

  @override
  State<_SignInFlow> createState() => _SignInFlowState();
}

class _SignInFlowState extends State<_SignInFlow> {
  final _email = TextEditingController();
  final _code = TextEditingController();
  bool _codeSent = false;
  bool _busy = false;
  String? _error;

  static final _emailRe = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  @override
  void dispose() {
    _email.dispose();
    _code.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final l10n = AppLocalizations.of(context);
    final email = _email.text.trim();
    if (!_emailRe.hasMatch(email)) {
      setState(() => _error = l10n.errInvalidEmail);
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.account.startLogin(email);
      setState(() => _codeSent = true);
    } catch (_) {
      setState(() => _error = l10n.errSignInFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _verify() async {
    final l10n = AppLocalizations.of(context);
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.account.verify(_email.text.trim(), _code.text.trim());
      if (mounted) Navigator.of(context).pop(true);
    } on BackendException catch (e) {
      setState(() => _error = e.code == 'invalid_code' ? l10n.errInvalidCode : l10n.errSignInFailed);
    } catch (_) {
      setState(() => _error = l10n.errSignInFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodyMedium?.copyWith(color: p.muted, height: 1.4);
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/branding/logo_128.png', height: 44),
          const SizedBox(height: 14),
          Text(l10n.signInTitle, style: theme.textTheme.titleLarge, textAlign: TextAlign.center),
          const SizedBox(height: 6),
          Text(
            _codeSent ? l10n.codeSentTo(_email.text.trim()) : l10n.accountBenefit,
            style: muted,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 18),
          if (!_codeSent)
            TextField(
              controller: _email,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              decoration: InputDecoration(labelText: l10n.emailLabel, border: const OutlineInputBorder()),
              onSubmitted: (_) => _busy ? null : _send(),
            )
          else
            TextField(
              controller: _code,
              autofocus: true,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.oneTimeCode],
              maxLength: 6,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall?.copyWith(letterSpacing: 8),
              decoration: InputDecoration(
                labelText: l10n.codeLabel,
                border: const OutlineInputBorder(),
                counterText: '',
              ),
              onSubmitted: (_) => _busy ? null : _verify(),
            ),
          if (_error != null) ...[const SizedBox(height: 8), Text(_error!, style: TextStyle(color: p.negative))],
          const SizedBox(height: 16),
          FilledButton(
            onPressed: _busy ? null : (_codeSent ? _verify : _send),
            child: _busy
                ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(_codeSent ? l10n.signIn : l10n.continueWithEmail),
          ),
          if (_codeSent) ...[
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _busy ? null : _send, child: Text(l10n.resendCode)),
                TextButton(
                  onPressed: _busy
                      ? null
                      : () => setState(() {
                          _codeSent = false;
                          _code.clear();
                          _error = null;
                        }),
                  child: Text(l10n.useDifferentEmail),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

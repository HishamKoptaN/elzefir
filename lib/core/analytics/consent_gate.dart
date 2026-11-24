import 'package:flutter/material.dart';

import '../di/dependency_injection.dart';
import '../widgets/custom_dialog/confirmation_dialog.dart';
import 'consent_service.dart';

/// بوابة تُطلب فيها موافقة التحليلات مرة واحدة عند أول إقلاع.
class ConsentGate extends StatefulWidget {
  const ConsentGate({
    required this.child,
    this.consent,
    super.key,
  });

  final Widget child;
  final ConsentDecision? consent;

  @override
  State<ConsentGate> createState() => _ConsentGateState();
}

class _ConsentGateState extends State<ConsentGate> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _askForConsent());
  }

  Future<void> _askForConsent() async {
    final consent = widget.consent ?? getIt<ConsentService>();
    if (await consent.isDecided() || !mounted) {
      return;
    }

    final accepted = await ConfirmationDialog.show(
      context: context,
      title: 'الخصوصية',
      message: 'نستخدم التحليلات وإعلانات Google لتحسين تجربتك. هل توافق؟',
    );
    if (!mounted || accepted == null) {
      return;
    }

    if (accepted) {
      await consent.grant();
    } else {
      await consent.deny();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

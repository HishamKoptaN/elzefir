import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/working_hours_entity.dart';
import '../../domain/use_cases/home_use_cases.dart';

/// يبني واجهة حسب مواعيد العمل وحالة فتح/غلق المحل القادمة من فايرستور.
/// [workingHours] تكون null قبل وصول أول قراءة أو عند تعذر القراءة.
class StoreStatusBuilder extends StatefulWidget {
  const StoreStatusBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, WorkingHoursEntity? workingHours)
  builder;

  @override
  State<StoreStatusBuilder> createState() => _StoreStatusBuilderState();
}

class _StoreStatusBuilderState extends State<StoreStatusBuilder> {
  /// بديل آمن حين يتعذر قراءة ساعات العمل: لا يعد بفتح المطعم.
  static const WorkingHoursEntity _fallbackHours = WorkingHoursEntity(
    openMinutes: 9 * 60,
    closeMinutes: 23 * 60,
    days: [
      DateTime.saturday,
      DateTime.sunday,
      DateTime.monday,
      DateTime.tuesday,
      DateTime.wednesday,
      DateTime.thursday,
    ],
    isOpenOverride: false,
  );

  late final Stream<WorkingHoursEntity?> _workingHoursStream =
      getIt<HomeUseCases>().watchWorkingHours();
  Timer? _ticker;
  Timer? _fallbackTimer;
  bool _timedOut = false;

  @override
  void initState() {
    super.initState();
    // إعادة التقييم دورياً حتى تتبدل الحالة عند تغيّر الوقت دون تعديل فايرستور.
    _ticker = Timer.periodic(const Duration(seconds: 30), (_) {
      if (mounted) {
        setState(() {});
      }
    });
    // لا نترك الواجهة في حالة «جارٍ التحقق» إلى أجل غير مسمى.
    _fallbackTimer = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        setState(() => _timedOut = true);
      }
    });
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _fallbackTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<WorkingHoursEntity?>(
      stream: _workingHoursStream,
      builder: (context, snapshot) {
        final WorkingHoursEntity? workingHours;
        if (snapshot.hasError ||
            snapshot.connectionState == ConnectionState.done ||
            (snapshot.connectionState == ConnectionState.active &&
                snapshot.data == null)) {
          workingHours = _fallbackHours;
        } else if (snapshot.data != null) {
          workingHours = snapshot.data;
        } else if (_timedOut) {
          workingHours = _fallbackHours;
        } else {
          workingHours = null;
        }
        return widget.builder(context, workingHours);
      },
    );
  }
}

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
  late final Stream<WorkingHoursEntity?> _workingHoursStream =
      getIt<HomeUseCases>().watchWorkingHours();
  Timer? _ticker;

  @override
  void initState() {
    super.initState();
    // إعادة التقييم دورياً حتى تتبدل الحالة عند تغيّر الوقت دون تعديل فايرستور.
    _ticker = Timer.periodic(const Duration(seconds: 30), (_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<WorkingHoursEntity?>(
      stream: _workingHoursStream,
      builder: (context, snapshot) {
        final workingHours = snapshot.hasError ? null : snapshot.data;
        return widget.builder(context, workingHours);
      },
    );
  }
}

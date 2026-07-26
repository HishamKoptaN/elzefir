import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../../../../../../core/di/dependency_injection.dart';
import '../date_bloc/date_bloc.dart';
import 'time_widget.dart';

class DateFilterBodyWidget extends StatelessWidget {
  const DateFilterBodyWidget({
    super.key,
    required this.onChanged,
    required this.fromDate,
    required this.toDate,
  });

  final Function({required DateTime? fromDate, required DateTime? toDate})?
  onChanged;
  final DateTime? fromDate;
  final DateTime? toDate;

  @override
  Widget build(BuildContext context) {
    final DateRangePickerController datePickerController =
        DateRangePickerController();
    datePickerController.selectedRange = PickerDateRange(fromDate, toDate);
    return Column(
      children: [
        SizedBox(
          height: 565.h,
          width: 550.w,
          child: SfDateRangePicker(
            controller: datePickerController,
            selectionMode: DateRangePickerSelectionMode.range,
            backgroundColor: Colors.transparent,
            initialSelectedRange: PickerDateRange(
              fromDate ?? DateTime.now(),
              toDate ?? DateTime.now(),
            ),
            view: DateRangePickerView.month,
            maxDate: DateTime.now(),
            showNavigationArrow: true,
            headerStyle: DateRangePickerHeaderStyle(
              backgroundColor: Colors.transparent,
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            monthViewSettings: const DateRangePickerMonthViewSettings(
              firstDayOfWeek: 6,
              showTrailingAndLeadingDates: true,
              dayFormat: 'EEE',
            ),
            monthCellStyle: DateRangePickerMonthCellStyle(
              textStyle: TextStyle(fontSize: 20.sp),
              todayTextStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              leadingDatesTextStyle: TextStyle(fontSize: 20.sp),
              trailingDatesTextStyle: TextStyle(fontSize: 20.sp),
              weekendTextStyle: TextStyle(fontSize: 20.sp),
            ),
            yearCellStyle: DateRangePickerYearCellStyle(
              textStyle: TextStyle(fontSize: 20.sp),
              todayTextStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            selectionTextStyle: TextStyle(fontSize: 20.sp),
            rangeTextStyle: TextStyle(fontSize: 20.sp),
            onSelectionChanged: (args) {
              if (args.value is PickerDateRange) {
                final PickerDateRange range = args.value;
                if (range.startDate != null && range.endDate != null) {
                  final currentState = getIt<DateBloc>().state;
                  DateTime? currentFrom;
                  DateTime? currentTo;
                  currentState.mapOrNull(
                    loaded: (s) {
                      currentFrom = s.fromDate;
                      currentTo = s.toDate;
                    },
                  );
                  getIt<DateBloc>().add(
                    DateEvent.dateRangeChanged(
                      fromDate: range.startDate?.copyWith(
                        hour: currentFrom?.hour ?? 0,
                        minute: currentFrom?.minute ?? 0,
                      ),
                      toDate: (range.endDate ?? range.startDate)?.copyWith(
                        hour: currentTo?.hour ?? 0,
                        minute: currentTo?.minute ?? 0,
                      ),
                    ),
                  );
                }
              }
            },
          ),
        ),
        BlocBuilder<DateBloc, DateState>(
          bloc: getIt<DateBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "من",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomTimePicker(
                                date: state.fromDate ?? DateTime.now(),
                                onTimeSelected: ({required date}) {
                                  getIt<DateBloc>().add(
                                    DateEvent.dateRangeChanged(
                                      fromDate: date,
                                      toDate: state.toDate,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "إلى",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomTimePicker(
                                date: state.toDate ?? DateTime.now(),
                                onTimeSelected: ({required date}) {
                                  getIt<DateBloc>().add(
                                    DateEvent.dateRangeChanged(
                                      fromDate: state.fromDate,
                                      toDate: date,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onChanged?.call(
                          fromDate: state.fromDate,
                          toDate: state.toDate,
                        );
                        context.pop();
                      },
                      child: Text("تطبيق", style: TextStyle(fontSize: 20.sp)),
                    ),
                  ],
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}

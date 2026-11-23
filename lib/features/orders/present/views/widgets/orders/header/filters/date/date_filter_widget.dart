import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../../../core/widgets/custom_dialog/custom_dialog.dart';
import '../custom_order_drop_down_btn_filter.dart';
import '../date_bloc/date_bloc.dart';
import 'date_filter_body_widget.dart';

class DateFilterView extends StatelessWidget {
  const DateFilterView({super.key, required this.onChanged});
  final Function({required DateTime? fromDate, required DateTime? toDate})?
  onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateBloc, DateState>(
      bloc: getIt<DateBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (state) {
            return CustomOrderFilterBtn(
              label: 'الفترة',
              widget: InkWell(
                onTap: () {
                  CustomDialog.show(
                    context: context,
                    title: 'الفترة',
                    child: DateFilterBodyWidget(
                      fromDate: state.fromDate,
                      toDate: state.toDate,
                      onChanged: ({fromDate, toDate}) {
                        onChanged?.call(fromDate: fromDate, toDate: toDate);
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 6.w,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 24,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      state.fromDate != null
                          ? DateFormat(
                              'mm: HH - dd / MM  ',
                              'en',
                            ).format(state.fromDate ?? DateTime.now())
                          : '',
                      style: TextStyle(fontSize: 18.sp.scaled(context)),
                    ),
                    Text(
                      state.toDate != null
                          ? DateFormat(
                              'mm : HH - MM / dd ',
                              'en',
                            ).format(state.toDate ?? DateTime.now())
                          : '',
                      style: TextStyle(fontSize: 18.sp.scaled(context)),
                    ),
                    Icon(Icons.arrow_drop_down, size: 40.r.scaled(context)),
                    if (state.fromDate != null)
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 25,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          getIt<DateBloc>().add(
                            DateEvent.dateRangeChanged(
                              fromDate: null,
                              toDate: null,
                            ),
                          );
                          onChanged?.call(fromDate: null, toDate: null);
                        },
                      ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return CircularProgressIndicator();
          },
        );
      },
    );
  }
}

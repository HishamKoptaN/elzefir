import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/responsive/device_helper.dart' as dh;
import '../../../../../../core/responsive/device_helper.dart';
import '../../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../core/widgets/tables/table_header_cell.dart';
import '../../../blocs/orders_bloc/orders_bloc.dart';
import '../../orders_widget.dart';

class OrdersTableHeaderWidget extends StatelessWidget {
  final bool selectAll;
  final int selectedCount;
  const OrdersTableHeaderWidget({
    super.key,
    required this.selectAll,
    required this.selectedCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h.scaled(context),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: .start,
              spacing: 6.w,
              children: [
                Tooltip(
                  message: 'اختر الكل للتصدير',
                  child: Transform.scale(
                    scale: .85.scaled(context),
                    child: Checkbox(
                      value: selectAll,
                      activeColor: context.colorScheme.primary,
                      checkColor: Colors.white,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (v) {
                        getIt<OrdersBloc>().add(
                          OrdersEvent.toggleSelectAll(v: v!),
                        );
                      },
                    ),
                  ),
                ),
                Text('الكل', style: TextStyle(fontSize: 20.sp.scaled(context))),
                Text(
                  '($selectedCount طلب محدد)',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp.scaled(context),
                  ),
                ),
              ],
            ),
          ),
          Expanded(flex: 5, child: TableHeaderCell(text: 'رقم الطلب')),
          if (context.isDesk)
            Expanded(flex: 5, child: TableHeaderCell(text: 'اسم العميل')),
          Expanded(flex: 5, child: TableHeaderCell(text: 'الحالة')),
          Expanded(flex: 5, child: TableHeaderCell(text: 'التاريخ')),
        ],
      ),
    );
  }
}

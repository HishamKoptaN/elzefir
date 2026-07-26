import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../../core/widgets/forms/custom_dropdown_form_field.dart';
import '../../../../../../../orders_statuses/domain/entities/order_status_entity.dart';
import '../../../../../../../orders_statuses/present/blocs/bloc/orders_statuses_bloc.dart';
import '../../../../orders_widget.dart';
import 'custom_order_drop_down_btn_filter.dart';

class OrderStatusDropdown extends StatelessWidget {
  const OrderStatusDropdown({super.key, required this.onChanged});
  final Function(OrderStatusEntity?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomOrderFilterBtn(
      label: 'الحالة',
      widget: BlocBuilder<OrdersStatusesBloc, OrdersStatusesState>(
        bloc: getIt<OrdersStatusesBloc>(),
        builder: (context, state) {
          state.mapOrNull(
            initial: (state) {
              getIt<OrdersStatusesBloc>().add(const OrdersStatusesEvent.get());
            },
          );
          return CustomDropdownFormField<OrderStatusEntity>(
            hintText: 'الحالة',
            onChanged: onChanged,
            initialValue: null,
            items: [
              DropdownMenuItem(
                value: null,
                child: Text(
                  'الكل',
                  style: TextStyle(fontSize: 20.sp.scaled(context)),
                ),
              ),
              ...state
                  .maybeMap(
                    loaded: (state) {
                      return state.ordersStatuses ?? [];
                    },
                    orElse: () {
                      return <OrderStatusEntity>[];
                    },
                  )
                  .map((orderStatus) {
                    return DropdownMenuItem<OrderStatusEntity>(
                      value: orderStatus,
                      child: Text(
                        orderStatus.name ?? '',
                        style: TextStyle(
                          color: orderStatus.color,
                          fontSize: 20.sp.scaled(context),
                        ),
                      ),
                    );
                  }),
            ],
          );
        },
      ),
    );
  }
}

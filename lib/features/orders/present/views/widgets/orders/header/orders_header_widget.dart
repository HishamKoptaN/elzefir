import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../core/widgets/forms/custom_dropdown_form_field.dart';
import '../../../../../data/models/filter_model.dart';
import '../../../../../data/models/order/orders_filter_model.dart';
import '../../../../../domain/entities/orders_res_entity.dart';
import '../../../../blocs/filters_bloc/filters_bloc.dart';
import 'filters/custom_order_drop_down_btn_filter.dart';
import 'filters/date/date_filter_widget.dart';
import 'export_all_btn.dart';
import 'filters/order_status_dropdown.dart';
import 'filters/product_dropdown.dart';

class OrdersHeaderWidget extends StatefulWidget {
  final List<OrderEntity> orders;
  final OrdersFilterModel ordersFilter;
  final bool? canExportAll;
  final ValueChanged<OrdersFilterModel> onChanged;

  const OrdersHeaderWidget({
    super.key,
    required this.ordersFilter,
    required this.orders,
    required this.canExportAll,
    required this.onChanged,
  });

  @override
  State<OrdersHeaderWidget> createState() => _OrdersHeaderWidgetState();
}

class _OrdersHeaderWidgetState extends State<OrdersHeaderWidget> {
  @override
  void initState() {
    super.initState();
    getIt<FiltersBloc>().add(FiltersEvent.get());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.surface,
            offset: const Offset(0, 6),
            blurRadius: 24,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 12.h.scaled(context),
        horizontal: 12.w,
      ),
      child: BlocBuilder<FiltersBloc, FiltersState>(
        bloc: getIt<FiltersBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return Wrap(
                runSpacing: 4.h.scaled(context),
                spacing: 10.w,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  if (state.filters != null && state.filters!.isNotEmpty)
                    ...state.filters!.map((filter) {
                      ValueModel? currentSelectedValue;
                      if (filter.values != null) {
                        for (var val in filter.values!) {
                          if (widget.ordersFilter.unifiedValueIds.contains(
                            val.id,
                          )) {
                            currentSelectedValue = val;
                            break;
                          }
                        }
                      }
                      return IntrinsicWidth(
                        child: CustomOrderFilterBtn(
                          label: filter.name ?? '',
                          widget: CustomDropdownFormField<ValueModel>(
                            hintText: 'الكل',
                            initialValue: currentSelectedValue,
                            onChanged: (selectedValue) {
                              List<int> updatedIds = List.from(
                                widget.ordersFilter.unifiedValueIds,
                              );
                              if (filter.values != null) {
                                final allFilterValueIds = filter.values!
                                    .map((v) => v.id)
                                    .toList();
                                updatedIds.removeWhere((id) {
                                  return allFilterValueIds.contains(id);
                                });
                              }
                              if (selectedValue != null &&
                                  selectedValue.id != null) {
                                updatedIds.add(selectedValue.id!);
                              }
                              widget.onChanged(
                                widget.ordersFilter.copyWith(
                                  unifiedValueIds: updatedIds,
                                ),
                              );
                            },
                            items: [
                              DropdownMenuItem<ValueModel>(
                                value: null,
                                child: Text(
                                  'الكل',
                                  style: TextStyle(
                                    fontSize: 20.sp.scaled(context),
                                  ),
                                ),
                              ),
                              ...?filter.values?.map((value) {
                                return DropdownMenuItem<ValueModel>(
                                  value: value,
                                  child: Text(
                                    value.value ?? '',
                                    style: TextStyle(
                                      fontSize: 20.sp.scaled(context),
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      );
                    }),
                  IntrinsicWidth(
                    child: OrderStatusDropdown(
                      onChanged: (v) {
                        widget.onChanged(
                          widget.ordersFilter.copyWith(selectedStatus: v),
                        );
                      },
                    ),
                  ),
                  IntrinsicWidth(
                    child: ProductDropdown(
                      onChanged: (v) {
                        widget.onChanged(
                          widget.ordersFilter.copyWith(product: v),
                        );
                      },
                    ),
                  ),
                  IntrinsicWidth(
                    child: DateFilterView(
                      onChanged: ({fromDate, toDate}) {
                        widget.onChanged(
                          widget.ordersFilter.copyWith(
                            fromDate: fromDate,
                            toDate: toDate,
                          ),
                        );
                      },
                    ),
                  ),
                  ExportAllBtn(
                    canExport: widget.canExportAll ?? false,
                    onTap: () {
                    },
                  ),
                ],
              );
            },
            orElse: () {
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}

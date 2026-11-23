import 'package:flutter/material.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/data/entities/meta_entity.dart';
import '../../../../core/utils/extensions/scaled.dart';
import '../../../../core/widgets/forms/custom_search_field.dart';
import '../../data/models/order/orders_filter_model.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../blocs/orders_bloc/orders_bloc.dart';
import 'orders_view.dart';
import 'widgets/orders/empty_search_widget.dart';
import 'widgets/orders/header/orders_header_widget.dart';
import 'widgets/orders/items/order_widget.dart';
import 'widgets/orders/orders_table_header_widget.dart';

class ScaleProvider extends InheritedWidget {
  final double scale;
  final Widget child;

  const ScaleProvider({super.key, required this.scale, required this.child})
    : super(child: child);

  static ScaleProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScaleProvider>();
  }

  @override
  bool updateShouldNotify(ScaleProvider oldWidget) => scale != oldWidget.scale;
}

class OrdersWidget extends StatefulWidget {
  final List<OrderEntity>? orders;
  final bool? selectAll;
  final int? selectedCount;
  final OrdersFilterModel? ordersFilter;
  final MetaEntity meta;
  final bool isSearching;
  const OrdersWidget({
    super.key,
    required this.orders,
    required this.ordersFilter,
    this.selectAll,
    this.selectedCount,
    required this.meta,
    required this.isSearching,
  });

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  ScrollController controller = ScrollController();

  double _uiScale = 1;
  @override
  void initState() {
    super.initState();
    _loadScale();
  }

  Future<void> _loadScale() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _uiScale = prefs.getDouble('ui_scale') ?? 1.0;
    });
  }

  Future<void> _saveScale() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('ui_scale', _uiScale);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleProvider(
        scale: _uiScale,
        child: Column(
          spacing: 10.h.scaled(context),
          children: [
            CustomSearchWidget(
              initialValue: widget.ordersFilter?.searchQuery ?? "",
              hintText:
                  ' البحث  رقم الطلب / رقم التنفيذ / رقم العميل / اسم العميل',
              onChanged: (v) {
                EasyDebounce.debounce(
                  'order-search-debounce',
                  const Duration(milliseconds: 500),
                  () {
                    getIt<OrdersBloc>().add(
                      OrdersEvent.filter(
                        ordersFilter:
                            widget.ordersFilter?.copyWith(
                              searchQuery: v.isEmpty ? null : v,
                            ) ??
                            OrdersFilterModel(),
                        perPage: 50,
                      ),
                    );
                  },
                );
              },
              onClear: () {
                EasyDebounce.cancel('order-search-debounce');
                getIt<OrdersBloc>().add(
                  OrdersEvent.filter(
                    ordersFilter:
                        widget.ordersFilter?.copyWith(searchQuery: null) ??
                        OrdersFilterModel(),
                    perPage: 10,
                  ),
                );
              },
            ),
            if (widget.ordersFilter?.hasActiveFilters ?? false)
              OrdersCountWidget(
                totalCount: widget.meta.total ?? 0,
                isSearching: widget.isSearching,
              ),
            IntrinsicHeight(
              child: OrdersHeaderWidget(
                orders: widget.orders ?? [],
                ordersFilter: widget.ordersFilter ?? OrdersFilterModel(),
                canExportAll: (widget.selectedCount ?? 0) > 0,
                onChanged: (updatedFilters) {
                  setState(() {
                    _selectedPage = 1;
                  });
                  getIt<OrdersBloc>().add(
                    OrdersEvent.filter(
                      ordersFilter: updatedFilters,
                      perPage: 50,
                    ),
                  );
                },
              ),
            ),
            OrdersTableHeaderWidget(
              selectAll: widget.selectAll ?? false,
              selectedCount: widget.selectedCount ?? 0,
            ),
            Expanded(
              child: Skeletonizer(
                enabled: widget.isSearching,
                effect: ShimmerEffect(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  duration: const Duration(seconds: 1),
                ),
                child: widget.orders?.isEmpty ?? false
                    ? const EmptySearchWidget()
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: widget.orders?.length,
                        itemBuilder: (context, i) {
                          return OrderWidget(
                            order: widget.orders?[i] ?? OrderEntity(),
                          );
                        },
                      ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  child: Row(
                    mainAxisAlignment: .end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        visualDensity: VisualDensity.compact,
                        icon: Icon(
                          Icons.zoom_out,
                          size: 16,
                        ),
                        onPressed: () async {
                          setState(() {
                            _uiScale = (_uiScale - 0.05).clamp(0.7, 1.3);
                          });
                          await _saveScale();
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.zoom_in,
                          size: 14,
                        ),
                        onPressed: () async {
                          setState(() {
                            _uiScale = (_uiScale + 0.05).clamp(0.7, 1.3);
                          });
                          await _saveScale();
                        },
                      ),
                      Text(
                        "${(_uiScale * 100).round()}%",
                        style: TextStyle(fontSize: 24.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

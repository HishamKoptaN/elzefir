import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/data/entities/meta_entity.dart';
import '../../../../core/errors/error_widget.dart';
import '../../../../core/utils/extensions/scaled.dart';
import '../../data/models/order/orders_filter_model.dart';
import '../blocs/orders_bloc/orders_bloc.dart';
import 'orders_widget.dart';
import 'package:flutter/cupertino.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});
  static const String routeName = "orders";

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  void initState() {
    super.initState();
    getIt<OrdersBloc>().add(OrdersEvent.get(page: 1, perPage: 10));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      bloc: getIt<OrdersBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (state) {
            return OrdersWidget(
              orders: state.orders ?? [],
              ordersFilter: state.ordersFilter ?? OrdersFilterModel(),
              meta: state.meta ?? MetaEntity(),
              isSearching: state.isSearching ?? false,
              selectAll: state.selectAll,
              selectedCount: state.selectedCount ?? 0,
            );
          },
          initial: (state) {
            return OrdersWidget(
              orders: [],
              ordersFilter: OrdersFilterModel(),
              meta: MetaEntity(),
              isSearching: true,
              selectAll: null,
            );
          },
          failure: (value) {
            return CustomErrorWidget(
              message: value.apiErrorModel.message,
              onRetry: () {},
            );
          },
          orElse: () {
            return OrdersWidget(
              orders: [],
              ordersFilter: OrdersFilterModel(),
              meta: MetaEntity(),
              isSearching: true,
              selectAll: null,
            );
          },
        );
      },
    );
  }
}

class OrdersCountWidget extends StatelessWidget {
  final int totalCount;
  final bool? isSearching;

  const OrdersCountWidget({
    super.key,
    required this.totalCount,
    required this.isSearching,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isSearching ?? false,
      effect: ShimmerEffect(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        duration: const Duration(seconds: 1),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h.scaled(context),
          horizontal: 20.w,
        ),
        child: Row(
          children: [
            Text(
              totalCount > 0
                  ? 'تم العثور على $totalCount طلب'
                  : 'لا توجد نتائج مطابقة',
              style: TextStyle(
                fontSize: 20.sp.scaled(context),
                color: totalCount > 0
                    ? Colors.grey.shade700
                    : Colors.red.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

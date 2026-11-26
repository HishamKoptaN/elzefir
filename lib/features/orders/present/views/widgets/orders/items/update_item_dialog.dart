import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../../../core/utils/extensions/responsive_icon_extension.dart';
import '../../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../../../core/widgets/forms/custom_text_form_field.dart';
import '../../../../../../order_items/domain/entities/update_unit_entity.dart';
import '../../../../../../order_items/present/blocs/orders_bloc/order_items_bloc.dart';
import '../../../../../domain/entities/orders_res_entity.dart';

class UpdateItemDialog extends StatefulWidget {
  const UpdateItemDialog({
    super.key,
    required this.onPressed,
    required this.orderId,
    required this.orderItemId,
    required this.unit,
  });
  final void Function()? onPressed;
  final String orderId;
  final String orderItemId;
  final UnitEntity unit;

  @override
  State<UpdateItemDialog> createState() => _UpdateItemDialogState();
}

class _UpdateItemDialogState extends State<UpdateItemDialog> {
  @override
  void initState() {
    super.initState();
    getIt<OrderItemsBloc>().add(
      OrderItemsEvent.dataChanged(
        updateOrderItem: UpdateUnitEntity(
          orderId: int.parse(widget.orderId),
          orderItemId: int.parse(widget.orderItemId),
          unitId: int.parse(widget.unit.id ?? '0'),
          documentationLink: LinkFormInput.dirty(
            value: widget.unit.documentationLink ?? '',
          ),
        ),
      ),
    );
  }

  final GlobalKey<State<CustomTextFormField>> _fieldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderItemsBloc, OrderItemsState>(
      bloc: getIt<OrderItemsBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.showSuccessSnackBar(
              title: "نجاح",
              message: "تم تحديث رابط التوثيق بنجاح",
            );
            Navigator.pop(context);
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          loaded: (state) {
            return Column(
              key: ValueKey(state.updateUnit?.unitId),
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 20.h,
              children: [
                Text(
                  "أدخل رابط مجلد الصور والفيديوهات الخاص بالطلب:",
                  style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  key: _fieldKey,
                  width: context.isDesk ? 600.w : double.infinity,
                  initialValue: widget.unit.documentationLink,
                  onChanged: (v) {
                    getIt<OrderItemsBloc>().add(
                      OrderItemsEvent.dataChanged(
                        updateOrderItem: state.updateUnit!.copyWith(
                          documentationLink: LinkFormInput.dirty(value: v),
                        ),
                      ),
                    );
                  },
                  keyboardType: TextInputType.url,
                  validator: (_) {
                    return state.updateUnit?.documentationLink?.error?.message;
                  },
                  decoration: InputDecoration(
                    hintText: "https://drive.google.com/...",
                    prefixIcon: const Icon(Icons.link),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        final customTextFormFieldState =
                            _fieldKey.currentState as CustomTextFormFieldState;
                        customTextFormFieldState.clear();
                        getIt<OrderItemsBloc>().add(
                          OrderItemsEvent.dataChanged(
                            updateOrderItem:
                                state.updateUnit?.copyWith(
                                  documentationLink: null,
                                ) ??
                                UpdateUnitEntity(documentationLink: null),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    iconAlignment: .end,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                  ),
                  icon: Icon(Icons.check, size: 10.iconRes),
                  label: SizedBox(
                    width: context.isDesk ? 40.w : 100.w,
                    height: 30.h,
                    child: state.isLoading == true
                        ? const CircularProgressIndicator()
                        : Text("حفظ", style: TextStyle(fontSize: 18.sp)),
                  ),

                  onPressed:
                      ((state.updateUnit?.formzSubmissionStatus.isSuccess ??
                              false) &&
                          (state.updateUnit?.isEdited(
                                documentationLink:
                                    widget.unit.documentationLink ?? "",
                              ) ??
                              false))
                      ? widget.onPressed
                      : null,
                ),
              ],
            );
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}

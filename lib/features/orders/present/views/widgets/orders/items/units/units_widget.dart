import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../../core/globals/database/shared_pref_helper.dart';
import '../../../../../../../../core/globals/database/shared_pref_keys.dart';
import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../../../../core/widgets/custom_copy_widget.dart';
import '../../../../../../../../core/widgets/custom_dialog/custom_dialog.dart';
import '../../../../../../../order_items/present/blocs/orders_bloc/order_items_bloc.dart';
import '../../../../../../domain/entities/orders_res_entity.dart';
import '../update_item_dialog.dart';

class UnitsWidget extends StatelessWidget {
  final String orderId;
  final List<UnitEntity> units;
  final Function(String, bool) toggleUnit;
  final SallaOrderItemEntity sallaOrderItem;
  final String clientName;

  final String createdAt;
  const UnitsWidget({
    super.key,
    required this.orderId,
    required this.units,
    required this.sallaOrderItem,
    required this.clientName,
    required this.createdAt,
    required this.toggleUnit,
  });
  bool isTextMoreThanFiveLines({required String text}) {
    List<String> lines = text
        .split('\n')
        .map((line) => line.trim())
        .where((line) => line.isNotEmpty)
        .toList();
    return lines.length > 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 5.h.scaled(context),
      children: units.map((unit) {
        return Container(
          height: 70.0.h.scaled(context),
          padding: EdgeInsets.symmetric(vertical: 6.h.scaled(context)),
          decoration: BoxDecoration(
            color: const Color(0xFFFBF9F6),
            border: Border.all(
              color: const Color(0xFF5E3B2E).withOpacity(0.08),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: .start,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: SizedBox(
                        width: 20.0.scaled(context),
                        height: 20.0.scaled(context),
                        child: Transform.scale(
                          scale: 0.75.scaled(context),
                          child: Checkbox(
                            value: unit.isSelected,
                            activeColor: context.colorScheme.primary,
                            checkColor: Colors.white,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (value) {
                              toggleUnit(unit.id!, value ?? false);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: context.isDesk ? 6 : 2,
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Tooltip(
                      message: 'رقم التنفيذ',
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w.scaled(context),
                          vertical: 4.h.scaled(context),
                        ),
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary.withOpacity(0.1),
                        ),
                        child: Text(
                          '#${unit.executionNumber}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: .center,
                          style: TextStyle(
                            fontSize: 15.sp.scaled(context),
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    CustomCopyWidget(
                      text: unit.executionNumber.toString(),
                      title: 'رقم التنفيذ',
                    ),
                  ],
                ),
              ),
              if (context.isDesk) Spacer(flex: 6),
              Expanded(
                flex: context.isDesk ? 6 : 8,
                child: Container(
                  margin: .symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50.withOpacity(0.6),
                    border: Border.all(color: Colors.blue.shade100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.h.scaled(context),
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceEvenly,
                      crossAxisAlignment: .center,
                      textBaseline: .ideographic,
                      spacing: 8.w.scaled(context),
                      children: [
                        IconButton(
                          tooltip: "حفظ الاستيكر كـ pdf",
                          icon: Icon(
                            Icons.picture_as_pdf,
                            size: 20,
                            color: unit.isGeneratedPdf
                                ? Colors.green
                                : Colors.red,
                          ),
                          color: unit.isGeneratedPdf
                              ? Colors.green
                              : Colors.red,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () async {
                            await SharedPrefHelper.setData(
                              key:
                                  '${SharedPrefKeys.isUnitPdfGenerated}${unit.id}',
                              value: true,
                            );
                          },
                        ),
                        IconButton(
                          tooltip: "حفظ الاستيكر كصورة PNG",
                          icon: Icon(
                            Icons.photo_sharp,
                            size: 20,
                            color: Colors.blue.shade700,
                          ),
                          color: Colors.blue.shade700,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                        ),
                        IconButton(
                          tooltip:
                              isTextMoreThanFiveLines(
                                text: sallaOrderItem.printedName ?? '',
                              )
                              ? "الاسم المطبوع اكثر من 5 أسطر تواصل مع العميل لتعديله"
                              : "معاينة الاستيكر",
                          icon: Icon(
                            Icons.visibility,
                             size: 20,
                          ),
                          color: Colors.grey.shade700,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                        ),
                        IconButton(
                          tooltip: "طباعة الاستيكر مباشرة",
                          icon: Icon(
                            Icons.print,
                           size: 20,
                          ),
                          color: Colors.grey.shade700,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: context.isDesk ? 6 : 8,
                child: Container(
                  margin: .symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50.withOpacity(0.6),
                    border: Border.all(color: Colors.orange.shade100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.h.scaled(context),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.ideographic,
                      spacing: 8.w.scaled(context),
                      children: [
                        IconButton(
                          tooltip: validLink(unit)
                              ? "حفظ التهنئة ك PDF"
                              : 'لا يوجد رابط تهنئة , اضف رابط',
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Icon(
                            Icons.picture_as_pdf,
                            size: 20,
                            color: validLink(unit) ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            if (unit.documentationLink != null &&
                                unit.documentationLink?.isNotEmpty == true) {}
                          },
                        ),
                        IconButton(
                          tooltip: "معاينة كارت التهنئة",
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility,
                            size: 20,
                          ),
                          color: Colors.grey.shade700,
                        ),
                        IconButton(
                          tooltip: "رابط التوثيق بالدرايف",
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {
                            CustomDialog.show(
                              context: context,
                              title: " رابط التوثيق",
                              child: UpdateItemDialog(
                                orderId: orderId,
                                orderItemId: sallaOrderItem.id ?? '',
                                unit: unit,
                                onPressed: () {
                                  getIt<OrderItemsBloc>().add(
                                    OrderItemsEvent.updateItem(),
                                  );
                                },
                              ),
                            );
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.googleDrive,
                            size: 20,
                            color:
                                (unit.documentationLink != null &&
                                    unit.documentationLink!.isNotEmpty)
                                ? Colors.green.shade700
                                : Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  bool validLink(UnitEntity unit) {
    return (unit.documentationLink != null &&
        unit.documentationLink?.isNotEmpty == true);
  }
}

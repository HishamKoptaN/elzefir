import 'package:flutter/material.dart';
import '../../../../products/domain/entities/product_entity.dart';
import 'addition_card.dart';

class AdditionsSection extends StatelessWidget {
  const AdditionsSection({super.key, required this.additions});
  final List<AdditionEntity> additions;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            // const Text(
            //   'الأطباق ',
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.w600,
            //     color: Color(0xFF001629),
            //   ),
            // ),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children: additions.map((product) {
                return AdditionCard(addition: product);
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

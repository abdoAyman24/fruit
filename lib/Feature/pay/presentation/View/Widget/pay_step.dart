import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/pay_step_item.dart';

class PayStep extends StatelessWidget {
  const PayStep({super.key, required this.selectIndex});
  final int selectIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getPayStep().length, (index) {
        return Expanded(
          child: PayStepItem(
            title: getPayStep()[index],
            index: index + 1,
            isActive: index <= selectIndex,
          ),
        );
      }),
    );
  }
}

List<String> getPayStep() {
  return ['الشحن', 'العنوان', 'المراجعه'];
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/active_pay_step.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/inActive_pay_step.dart';

class PayStepItem extends StatelessWidget {
  const PayStepItem({super.key, required this.title, required this.index, required this.isActive});
  final String title;
  final int index;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InactivePayStep(title: title ,index: index, ),
      secondChild: ActivePayStep(title: title),
      crossFadeState: isActive ? CrossFadeState.showSecond :CrossFadeState.showFirst,
      duration: Duration(microseconds: 300),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/pay_view_body.dart';

class PayView extends StatelessWidget {
  const PayView({super.key});
  static const routeName = 'PayView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PayViewBody());
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/address_section.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/payment_section.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/shapping_page_view.dart';

class PayPageView extends StatelessWidget {
  const PayPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: getPageView().length,
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      itemBuilder: (context, index) {
        return getPageView()[index];
      },
    );
  }

  List<Widget> getPageView() {
    return [ShappingPageView(), AddressSection(), PaymentSection()];
  }
}

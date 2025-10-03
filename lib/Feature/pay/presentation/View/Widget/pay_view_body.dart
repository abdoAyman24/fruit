import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_app_bar.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/pay_page_view.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/pay_step.dart';

class PayViewBody extends StatefulWidget {
  const PayViewBody({super.key});

  @override
  State<PayViewBody> createState() => _PayViewBodyState();
}

class _PayViewBodyState extends State<PayViewBody> {
  late PageController pageController;
  int selectIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        selectIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'الشحن', context: context),
          const SizedBox(height: 16),
          PayStep(selectIndex: selectIndex),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: PayPageView(pageController: pageController),
            ),
          ),
          CusttomButtom(
            onPressed: () {
              pageController.nextPage(
                duration: Duration(microseconds: 300),
                curve: Curves.bounceIn,
              );
             
            },
            text: 'التالي',
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

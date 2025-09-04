import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/Widget/on_bording_page_view.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  late PageController pageController;
  var currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
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
    return SafeArea(
      child: Column(
        children: [
          OnBordingPageView(
            pageController: pageController,
          
          ),
          DotsIndicator(
            dotsCount: 2,
            animate: true,
            position: currentIndex.toDouble(),
            decorator: DotsDecorator(
              activeColor: appColor.primary,
              color:currentIndex==1 ? appColor.primary : appColor.primary.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 35),

         currentIndex==1 ? Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16.0),
           child: CusttomButtom(onPressed: () {}, text: 'ابدأ الان'  ),
         ) : const SizedBox(height: 54,),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/Widget/page_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) ==
                0,
            image: Assets.imagePageViewItem1Image,
            bachground: Assets.imagePageViewItem1Background,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("مرحبًا بك في "), Text("HUB"), Text("Fruit")],
            ),
          ),
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) ==
                0,

            image: Assets.imagePageViewItem2Image,
            bachground: Assets.imagePageViewItem2Background,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("ابحث وتسوق")],
            ),
          ),
        ],
      ),
    );
  }
}

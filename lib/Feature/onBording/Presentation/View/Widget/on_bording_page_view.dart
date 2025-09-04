import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
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
            isVisible: true,
            image: Assets.imagePageViewItem1Image,
            bachground: Assets.imagePageViewItem1Background,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("مرحبًا بك في ", style: AppText.bold23),
                Text(
                  "HUB",
                  style: AppText.bold23.copyWith(color: appColor.primary),
                ),
                Text(
                  "Fruit",
                  style: AppText.bold23.copyWith(
                    color: appColor.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          PageViewItem(
            isVisible: false,

            image: Assets.imagePageViewItem2Image,
            bachground: Assets.imagePageViewItem2Background,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("ابحث وتسوق", style: AppText.bold23)],
            ),
          ),
        ],
      ),
    );
  }
}

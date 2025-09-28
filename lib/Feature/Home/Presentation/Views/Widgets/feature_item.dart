import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/featurer_item_button.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    var WidthItem = MediaQuery.of(context).size.width;

    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(8),
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                top: 0,
                right: WidthItem * .4,
                child: SvgPicture.asset(
                  Assets.imagePageViewItem2Image,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: WidthItem * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(Assets.imageFeatureItemBackground),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),

                      Text(
                        'عروض العيد',
                        style: AppText.regular13.copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        'خصم 25%',
                        style: AppText.bold19.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 10),

                      FeaturerItemButton(onPressed: () {}),

                      const SizedBox(height: 29),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

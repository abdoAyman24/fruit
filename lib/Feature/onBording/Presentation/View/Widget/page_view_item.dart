import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.bachground,
    required this.subTitle,
    required this.title, required this.isVisible,
  });
  final String image, bachground;
  final String subTitle;
  final Widget title;
  final bool isVisible ;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned(
                child: SvgPicture.asset(
                  bachground,
                  fit: BoxFit.fill,
                  width: double.infinity,),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                    image,
                  ),
              ),
            Visibility(
              visible: isVisible,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('تخطى',style: AppText.regular13,),
              ),
            ),
            ],
          ),
        ),
     SizedBox(height: 64,),
     title,
     SizedBox(height: 24,),
     Padding(
       padding: const EdgeInsets.only(right: 37 , left: 37),
       child: Text(subTitle,textAlign:TextAlign.center,style: AppText.semiBold13,),
     )
      ],
    );
  }
}

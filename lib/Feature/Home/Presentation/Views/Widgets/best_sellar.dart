import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/BestSelling/Presentation/View/best_selling_view.dart';

class BestSellar extends StatelessWidget {
  const BestSellar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(BestSellingView.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'الأكثر مبيعًا',
            textAlign: TextAlign.right,
            style: AppText.bold16.copyWith(color: const Color(0xFF0C0D0D)),
          ),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: AppText.regular13.copyWith(color: const Color(0xFF949D9E)),
          ),
        ],
      ),
    );
  }
}

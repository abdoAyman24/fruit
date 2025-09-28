import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/feature_item.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeatureItem(),
          );
        }),
      ),
    );
  }
}

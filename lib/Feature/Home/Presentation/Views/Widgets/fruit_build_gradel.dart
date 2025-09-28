import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/fruit_item.dart';

class FruitBuildGradel extends StatelessWidget {
  const FruitBuildGradel({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 14,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}

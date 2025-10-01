import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/fruit_item.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';

class FruitBuildGradel extends StatelessWidget {
  const FruitBuildGradel({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 14,
      ),
      
      itemBuilder: (context, index) {
        return FruitItem(
          product: products[index],
        );
      },
    );
  }
}

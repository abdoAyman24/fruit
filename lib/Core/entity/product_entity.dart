import 'dart:io';

import 'package:fruit_hup/Core/entity/review_entity.dart';



class ProductEntity {
  final String productName;
  final String description;
  final String productId;
  final File productImage;
  final num productPrice;
  String? imageUrl;
  final int expirationMonth;
  final int numberOfCalories;
  final int unitAmount;
  final bool isFeature;

  final bool isOrganic;
  final num avgAmount;
  final num ratingCount;
  final List<ReviewEntity> review;

  ProductEntity({
    required this.description,
    required this.review,

    required this.productName,
    required this.productId,
    required this.productImage,
    required this.productPrice,
    this.imageUrl,
    required this.expirationMonth,
    required this.numberOfCalories,
    required this.unitAmount,
    this.isOrganic = false,
    this.isFeature = false,

    this.avgAmount = 0,
    this.ratingCount = 0,
  });
}

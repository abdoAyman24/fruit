import 'dart:io';

import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Core/model/review_model.dart';



class AddProductModel {
  final String productName;
  final String description;
  final String productId;
  final File productImage;
  final num productPrice;
  final String? imageUrl;
  final int expirationMonth;
  final int numberOfCalories;
   final num sellingCount;
  final int unitAmount;
  final bool isFeature;

  final bool isOrganic;
  final num avgAmount;
  final num ratingCount;
  final List<ReviewModel> review;

  AddProductModel({
    required this.description,
    required this.review,
    required this.productName,
    required this.productId,
    required this.productImage,
    required this.productPrice,
    this.imageUrl,
    this.sellingCount = 0,
    required this.expirationMonth,
    required this.numberOfCalories,
    required this.unitAmount,
    this.isFeature = false,

    this.isOrganic = false,
    this.avgAmount = 0,
    this.ratingCount = 0,
  });

  factory AddProductModel.fromAddProductEntity(ProductEntity entity) {
    return AddProductModel(
      review: entity.review.map((e) => ReviewModel.formEntity(e)).toList(),
      productName: entity.productName,
      description: entity.description,
      productId: entity.productId,
      productImage: entity.productImage,
      productPrice: entity.productPrice,
      expirationMonth: entity.expirationMonth,
      numberOfCalories: entity.numberOfCalories,
      unitAmount: entity.unitAmount,
      isOrganic: entity.isOrganic,
      isFeature: entity.isFeature,
      avgAmount: entity.avgAmount,
      ratingCount: entity.ratingCount,
      imageUrl: entity.imageUrl,
    );
  }
  toMap() {
    return {
      'name': productName,
      'description': description,
      'id': productId,
      'pricr': productPrice,
      'url': imageUrl,
      'ratingCount': ratingCount,
      'avgAmount': avgAmount,
      'isOrganic': isOrganic,
      'unitAmount': unitAmount,
      'numberOfCalories': numberOfCalories,
      'expirationMonth': expirationMonth,
      'review': review.map((e) => e.toJson()).toList(),
      'imageUrl': imageUrl,
      'isFeature': isFeature,
    };
  }
}

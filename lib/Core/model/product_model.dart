
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Core/entity/review_entity.dart';
import 'package:fruit_hup/Core/helper_function/average_rating_count.dart';
import 'package:fruit_hup/Core/model/review_model.dart';

class ProductModel {
  final String productName;
  final String description;
  final String productId;
  final num productPrice;
  final String? imageUrl;
  final int expirationMonth;
  final int numberOfCalories;
  final num sellingCount;
  final int unitAmount;
  final bool isFeature;
  final num averageRating;
  final bool isOrganic;
  final num avgAmount;
  final num ratingCount;
  final List<ReviewModel> review;

  ProductModel({
    required this.description,
    required this.review,
    required this.productName,
    required this.productId,
    required this.productPrice,
    required this.imageUrl,
    required this.averageRating,
    required this.sellingCount,
    required this.expirationMonth,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.isFeature ,

   required this.isOrganic ,
  required  this.avgAmount ,
   required this.ratingCount ,
  });

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      review: List<ReviewModel>.from(
        map['review']?.map((x) => ReviewModel.fromJson(x)),
      ),
      productName: map['name'],
      averageRating: averageRatingcount(map['review'] !=null? List<ReviewModel>.from(
        map['review']?.map((x) => ReviewModel.fromJson(x)),
      ) : []),
      description: map['description'],
      sellingCount: map['sellingCount'],
      productId: map['id'],
      productPrice: map['price'],
      imageUrl: map['url'],
      expirationMonth: map['expirationMonth'],
      numberOfCalories: map['numberOfCalories'],
      unitAmount: map['unitAmount'],
      isOrganic: map['isOrganic'],
      isFeature: map['isFeature'],
      avgAmount: map['avgAmount'] ,
      ratingCount: map['ratingCount'] ,
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      review: review
          .map(
            (e) => ReviewEntity(
              name: e.name,
              image: e.image,
              rate: e.rate,
              date: e.date,
              descreption: e.descreption,
            ),
          )
          .toList(),
      productName: productName,
      description: description,
      productId: productId,
      productPrice: productPrice,
      expirationMonth: expirationMonth,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      isOrganic: isOrganic,
      isFeature: isFeature,
      avgAmount: avgAmount,
      ratingCount: ratingCount,
      imageUrl: imageUrl,
    
    );
  }
}



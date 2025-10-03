
import 'package:equatable/equatable.dart';
import 'package:fruit_hup/Core/entity/review_entity.dart';



class ProductEntity extends Equatable {
  final String productName;
  final String description;
  final String productId;
  final num productPrice;
 final String? imageUrl;
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
    required this.productPrice,
   required this.imageUrl,
    required this.expirationMonth,
    required this.numberOfCalories,
    required this.unitAmount,
   required this.isOrganic ,
   required this.isFeature ,

   required this.avgAmount ,
  required  this.ratingCount ,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [productId];
}

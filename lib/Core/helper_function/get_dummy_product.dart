
import 'package:fruit_hup/Core/entity/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    description: 'Fresh and juicy apples',
    review: [],
    productName: 'Apple',
    productId: '1', // Replace with actual image file
    productPrice: 1.99,
    expirationMonth: 6,
    numberOfCalories: 52,
    unitAmount: 1,
    isOrganic: true,
    isFeature: true,
    avgAmount: 4.5,
    ratingCount: 100,
    imageUrl: null,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}

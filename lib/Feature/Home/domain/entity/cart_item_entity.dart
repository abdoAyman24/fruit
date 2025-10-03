import 'package:equatable/equatable.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, required this.count});

  num calculatePrice() {
    return productEntity.productPrice * count;
  }

  num calculateUnite() {
    return productEntity.unitAmount * count;
  }

  increaseCount() {
    count++;
  }

  decreaseCounte() {
    count--;
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}

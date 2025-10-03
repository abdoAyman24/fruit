import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  addCartItem(CartItemEntity cart) {
    cartItems.add(cart);
  }

  removeCartItem(CartItemEntity cart) {
    cartItems.remove(cart);
  }

  bool isProductExist(ProductEntity productEntity) {
    for (var carItem in cartItems) {
      if (carItem.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }

  num getSumOfProduct() {
    num sum = 0;
    for (var carItem in cartItems) {
      sum += carItem.calculatePrice();
    }
    return sum;
  }

  CartItemEntity? getCartItemEntity(ProductEntity productEntity) {
    for (var cartItem in cartItems) {
      if (cartItem.productEntity == productEntity) {
        return cartItem;
      }
    }
    return CartItemEntity(productEntity: productEntity, count: 1);
  }
}

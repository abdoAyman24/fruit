import 'package:bloc/bloc.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_entity.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartItemInitial());

  CartEntity cartEntity = CartEntity(cartItems: []);

  void addProductToCart(ProductEntity productEntity) {
    emit(AddProductToCart());

    var cartItem = cartEntity.getCartItemEntity(productEntity);
    bool isProductExist = cartEntity.isProductExist(productEntity);
    if (isProductExist) {
      cartItem!.increaseCount();
    } else {
      cartEntity.addCartItem(cartItem!);
    }
  }

  void removeProductFromCart(CartItemEntity cartItemEntity) {
    emit(RemoveProductFromCart());
    cartEntity.removeCartItem(cartItemEntity);
  }
}

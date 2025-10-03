import 'package:bloc/bloc.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void updateCartItem(CartItemEntity cart) {
    emit(CartItemUpdate(cartItemEntity: cart));
  }
}

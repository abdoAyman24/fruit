import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_item.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItemList});
 final List <CartItemEntity> cartItemList ;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount:cartItemList.length,
      itemBuilder: (context, index) {
        return CartItem(
          cartItemEntity: cartItemList[index],
        );
      },
      separatorBuilder: (context, index) =>
          Divider(height: 20, color: const Color(0xFFF1F1F5)),
    );
  }
}

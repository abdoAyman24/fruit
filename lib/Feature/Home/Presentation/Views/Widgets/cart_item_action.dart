import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_item_action_buttom.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';

class CartItemAction extends StatelessWidget {
  const CartItemAction({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButtom(
          icon: Icons.add,
          iconColor: Colors.white,
          buttomColor: appColor.primary,
          onTap: () {
            cartItemEntity.increaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            cartItemEntity.count.toString(),
            textAlign: TextAlign.center,
            style: AppText.bold16,
          ),
        ),
        CartItemActionButtom(
          icon: Icons.remove,
          iconColor: Colors.grey,
          buttomColor: Color(0xFFF3F5F7),
          onTap: () {
            cartItemEntity.decreaseCounte();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
            if (cartItemEntity.count < 0) {
              context.read<CartCubit>().removeProductFromCart(cartItemEntity);
            }
          },
        ),
      ],
    );
  }
}

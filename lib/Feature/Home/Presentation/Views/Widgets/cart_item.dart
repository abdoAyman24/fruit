import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_item_action.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hup/Feature/Home/domain/entity/cart_item_entity.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdate) {
          if (current.cartItemEntity == cartItemEntity) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 100,
                  color: Colors.grey[300],
                  child: Image.network(cartItemEntity.productEntity.imageUrl!),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            cartItemEntity.productEntity.productName,
                            style: AppText.bold13,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<CartCubit>().removeProductFromCart(
                                cartItemEntity,
                              );
                            },
                            child: SvgPicture.asset(Assets.imageTrash),
                          ),
                        ],
                      ),
                      // SizedBox(height: 30),
                      Text(
                        '${cartItemEntity.calculateUnite()} كم',
                        textAlign: TextAlign.right,
                        style: AppText.regular13.copyWith(
                          color: const Color(0xFFF4A91F),
                        ),
                      ),
                      Row(
                        children: [
                          CartItemAction(cartItemEntity: cartItemEntity),
                          const Spacer(),
                          Text(
                            ' ${cartItemEntity.calculatePrice()}جنيه',
                            style: AppText.bold16.copyWith(
                              color: appColor.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

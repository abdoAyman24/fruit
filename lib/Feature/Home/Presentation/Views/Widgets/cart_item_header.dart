import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';

class CartItemHeader extends StatelessWidget {
  const CartItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(color: const Color(0xFFEBF9F1) /* Green1-50 */),
      child: Center(
        child: Text(
          'لديك ${context.watch<CartCubit>().cartEntity.cartItems.length} منتجات في سله التسوق',
          style: AppText.regular13,
        ),
      ),
    );
  }
}

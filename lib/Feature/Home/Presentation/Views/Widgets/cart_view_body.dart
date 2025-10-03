import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_app_bar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_item_header.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_item_list.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/custom_cart_button.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  CustomAppBar(title: 'السلة', context: context),
                  const SizedBox(height: 16),
                  CartItemHeader(),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(height: 20, color: const Color(0xFFF1F1F5)),
            ),
            CartItemList(
              cartItemList: context.watch<CartCubit>().cartEntity.cartItems,
            ),
            SliverToBoxAdapter(
              child: Divider(height: 20, color: const Color(0xFFF1F1F5)),
            ),
          ],
        ),
        CustomCartButton(),
      ],
    );
  }
}

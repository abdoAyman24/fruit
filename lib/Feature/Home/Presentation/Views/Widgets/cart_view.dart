import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_view_body.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/cart_item_cubit/cart_item_cubit.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartItemCubit(),
      child: CartViewBody(),
    );
  }
}

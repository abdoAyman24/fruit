import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/cart_item_cubit/cart_item_cubit.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return Positioned(
          bottom: MediaQuery.of(context).size.height * 0.02,
          left: 16,
          right: 16,
          child: CusttomButtom(
            onPressed: () {},
            text:
                'الدفع  ${context.watch<CartCubit>().cartEntity.getSumOfProduct()} جنيه',
          ),
        );
      },
    );
  }
}
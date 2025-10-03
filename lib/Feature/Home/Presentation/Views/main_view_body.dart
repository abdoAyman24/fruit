import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/helper_function/builder_Snack_Bare.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/cart_view.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/home_view.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/product_view.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is AddProductToCart) {
          builderSnackBare(context, 'تمت الاضافة بنجاح');
        }
        if (state is RemoveProductFromCart) {
          builderSnackBare(context, 'تمت إزالة العنصر ');
        }
      },
      child: IndexedStack(
        index: currentIndex,
        children: [HomeView(), ProductView(), CartView()],
      ),
    );
  }
}

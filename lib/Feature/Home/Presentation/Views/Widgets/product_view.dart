import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Product_Repo/product_repo.dart';
import 'package:fruit_hup/Core/cubit/products_cubit/products_cubit.dart';
import 'package:fruit_hup/Core/services/service_locator.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
      create: (context) =>ProductsCubit(getIt.get<ProductRepo>()),
      child: ProductViewBody(),
    ),
    );
  }
}

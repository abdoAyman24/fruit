import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Product_Repo/product_repo.dart';
import 'package:fruit_hup/Core/cubit/products_cubit/products_cubit.dart';
import 'package:fruit_hup/Core/services/service_locator.dart';

import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductRepo>()),
      child: HomeViewBody(),
    );
  }
}

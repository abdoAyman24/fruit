import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_error_widget.dart';
import 'package:fruit_hup/Core/cubit/products_cubit/products_cubit.dart';
import 'package:fruit_hup/Core/helper_function/get_dummy_product.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/fruit_build_gradel.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsViewBlocBuilder extends StatelessWidget {
  const ProductsViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return FruitBuildGradel(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errormessage: state.errorMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: FruitBuildGradel(products: getDummyProducts()),
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/cubit/products_cubit/products_cubit.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/best_sellar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/products_view_bloc_builder.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/custom_home_app_bar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/feature_list.dart';

import 'search_form_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                CustomHomeAppBar(),
                const SizedBox(height: 24),
                SearchField(),
                const SizedBox(height: 12),
                FeatureList(),
                const SizedBox(height: 12),
                BestSellar(),
                const SizedBox(height: 8),
              ],
            ),
          ),
          ProductsViewBlocBuilder(),
        ],
      ),
    );
  }
}

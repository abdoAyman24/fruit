import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/best_sellar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/custom_home_app_bar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/feature_list.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/fruit_build_gradel.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/search_form_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
          FruitBuildGradel(),
        ],
      ),
    );
  }
}

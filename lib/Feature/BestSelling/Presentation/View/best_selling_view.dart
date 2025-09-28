import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/build_app_bar_best_selling.dart';
import 'package:fruit_hup/Feature/BestSelling/Presentation/View/Widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'BestSellingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbarBestSeller(),
      body: BestSellingViewBody(),
    );
  }


}

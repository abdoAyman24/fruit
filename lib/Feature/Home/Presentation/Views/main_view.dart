import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/home_view.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'HomeView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          valueChanged: (value) {
            currentIndex = value;
            setState(() {
              
            });
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: [
            HomeView(),
            ProductView(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/Widgets/main_view_body_bloc_listner.dart';

import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';

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
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => CartCubit(),
          child: Scaffold(
            bottomNavigationBar: CustomBottomNavigationBar(
              valueChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
            ),
            body: MAinViewBodyBlocListner(currentIndex: currentIndex),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/main_view_body.dart';

class MAinViewBodyBlocListner extends StatelessWidget {
  const MAinViewBodyBlocListner({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return MainViewBody(currentIndex: currentIndex);
  }
}
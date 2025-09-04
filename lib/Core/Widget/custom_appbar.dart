  import 'package:flutter/material.dart';

AppBar BuildCustomAppBar(BuildContext context , String title) {
    return AppBar(
    backgroundColor: Colors.white,
    title: Text(title),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
  }
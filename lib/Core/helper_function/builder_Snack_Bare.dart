import 'package:flutter/material.dart';

void builderSnackBare(BuildContext context, String errorMessage) {
     ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(errorMessage)));
  }
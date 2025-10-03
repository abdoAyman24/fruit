import 'package:flutter/material.dart';

abstract class ContainerDecoration {
  static var greyBoxDecoration = ShapeDecoration(
    color: const Color(0x33D9D9D9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}

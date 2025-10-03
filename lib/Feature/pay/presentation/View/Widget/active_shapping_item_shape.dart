import 'package:flutter/material.dart';

class ActiveShappingItemShape extends StatelessWidget {
  const ActiveShappingItemShape({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 18,
          height: 18,
          decoration: ShapeDecoration(
            color: const Color(0xFF1B5E37) /* Green1-500 */,
            shape: OvalBorder(
              side: BorderSide(width: 4, color: Colors.white),
            ),
          ),
        );
  }
}
import 'package:flutter/material.dart';

class CartItemActionButtom extends StatelessWidget {
  const CartItemActionButtom({
    super.key,
    required this.onTap,
    required this.iconColor,
    required this.icon,
    required this.buttomColor,
  });
  final VoidCallback onTap;
  final Color iconColor;
  final IconData icon;
  final Color buttomColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        padding: EdgeInsets.all(2),
        decoration: ShapeDecoration(
          color: buttomColor /* Green1-500 */,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        child: FittedBox(child: Icon(icon, color: iconColor)),
      ),
    );
  }
}
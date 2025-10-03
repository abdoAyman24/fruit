import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/active_shapping_item_shape.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/inActive_shapping_item_shape.dart';

class ShappingPageViewItem extends StatelessWidget {
  const ShappingPageViewItem({
    super.key,
    required this.title,
    required this.suptitle,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });
  final String title, suptitle, price;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        child: Container(
          padding: const EdgeInsets.only(
            top: 16,
            left: 13,
            right: 28,
            bottom: 16,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0x33D9D9D9),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isSelected ? appColor.KLightprimary : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isSelected
                    ? ActiveShappingItemShape()
                    : InActiveShappingItemShape(),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppText.semiBold13),
                    const SizedBox(height: 7),

                    Text(
                      suptitle,
                      textAlign: TextAlign.right,
                      style: AppText.regular13.copyWith(
                        color: Colors.black.withOpacity(0.50),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                  child: Text(
                    '$price جنيه',
                    style: AppText.bold13.copyWith(
                      color: appColor.KLightprimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

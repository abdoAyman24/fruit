import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/entity/product_entity.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Home/Presentation/manager/Cart_Cubit/cart_cubit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 214,
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              Flexible(
                child: Center(
                  child: product.imageUrl != null
                      ? Image.network(product.imageUrl!, fit: BoxFit.fill)
                      : Container(color: Colors.grey, width: 100, height: 100),
                ),
              ),
              const SizedBox(height: 20),

              ListTile(
                title: Text(
                  product.productName,
                  textAlign: TextAlign.right,
                  style: AppText.semiBold13.copyWith(
                    color: const Color(0xFF0C0D0D),
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${product.productPrice}جنية ',
                        style: AppText.bold13.copyWith(
                          color: appColor.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: '/',
                        style: AppText.bold13.copyWith(
                          color: appColor.secondaryLightColor,
                        ),
                      ),
                      TextSpan(
                        text: ' الكيلو',
                        style: AppText.semiBold13.copyWith(
                          color: appColor.secondaryLightColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: GestureDetector(
                  onTap: () {
                    context.read<CartCubit>().addProductToCart(product);
                  },
                  child: CircleAvatar(
                    backgroundColor: appColor.primary,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/shapping_page_view_item.dart';

class ShappingPageView extends StatefulWidget {
  const ShappingPageView({super.key});

  @override
  State<ShappingPageView> createState() => _ShappingPageViewState();
}

class _ShappingPageViewState extends State<ShappingPageView> {
  int isSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShappingPageViewItem(
          onTap: () {
            setState(() {
              isSelected = 0;
            });
          },
          isSelected: isSelected == 0,
          suptitle: 'التسليم من المكان',
          title: 'الدفع عند الاستلام',
          price: '40',
        ),
        const SizedBox(height: 12),
        ShappingPageViewItem(
          onTap: () {
            setState(() {
              isSelected = 1;
            });
          },
          isSelected: isSelected == 1,
          suptitle: 'الدفع أولاين',
          title: 'يرجي تحديد طريقه الدفع',
          price: '40',
        ),
      ],
    );
  }
}

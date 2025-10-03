import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/pay/presentation/View/Widget/payment_section_container.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        PaymentSectionContainer(
          title: 'ملخص الطلب :',
          widget: Column(
            children: [
              Row(
                children: [
                  Text('ملخص الطلب :', style: AppText.bold13),
                  Spacer(),
                  Text(
                    '150 جنيه',
                    textAlign: TextAlign.right,
                    style: AppText.semiBold16,
                  ),
                ],
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  Text('التوصيل  :', style: AppText.regular13),
                  Spacer(),
                  Text(
                    '30جنية',
                    textAlign: TextAlign.right,
                    style: AppText.semiBold13,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(
                  thickness: 0.5,
                  height: 20,
                  color: const Color(0xFFCACECE),
                ),
              ),
              Row(
                children: [
                  Text('الكلي', style: AppText.bold16),
                  Spacer(),

                  Text(
                    '180 جنيه',
                    textAlign: TextAlign.right,
                    style: AppText.bold16,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        PaymentSectionContainer(
          title: 'عنوان التوصيل',
          widget: Row(
            children: [
              SvgPicture.asset(Assets.imageLocation),
              SizedBox(width: 8),
              Text(
                'شارع النيل، مبنى رقم ١٢٣',
                textAlign: TextAlign.right,
                style: AppText.regular16,
              ),
              Spacer(),
              SvgPicture.asset(Assets.imageEdit),

              Text(
                'تعديل',
                style: AppText.semiBold13.copyWith(color: Color(0xFF949D9E)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

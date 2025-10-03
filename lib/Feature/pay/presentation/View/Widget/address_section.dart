import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hint: 'الاسم كامل', keyboardType: TextInputType.name),
        SizedBox(height: 10,),
         CustomTextFormField(hint: 'البريد الإلكتروني', keyboardType: TextInputType.name),
        SizedBox(height: 10,),
         CustomTextFormField(hint: 'العنوان', keyboardType: TextInputType.name),
        SizedBox(height: 10,),
         CustomTextFormField(hint: 'رقم الهاتف', keyboardType: TextInputType.name),
        SizedBox(height: 10,),
         CustomTextFormField(hint: 'العنوان', keyboardType: TextInputType.name),
        SizedBox(height: 10,),
         CustomTextFormField(hint: 'رقم الطابق , رقم الشقه ..', keyboardType: TextInputType.name),
        
        
      ],
    );
  }
}
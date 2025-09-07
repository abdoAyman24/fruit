import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.onSave});
  final void Function(String?) onSave;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSave: widget.onSave,
      hint: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      widget: IconButton(
        onPressed: () {
          
          setState(() {
           obscureText = !obscureText; 
          });
        },
        icon: obscureText? Icon(
          Icons.remove_red_eye_sharp,
          color: Colors.grey.withOpacity(0.5),
        ) : Icon(
          Icons.visibility_off,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}

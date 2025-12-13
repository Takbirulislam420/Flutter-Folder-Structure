import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/app_text_field_theme.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool isDarkMode; // Optional: use dark theme

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.controller,
    this.isDarkMode = false,
  });

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    // Select the theme based on light/dark mode

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword && _obscurePassword,
      validator: widget.validator,
      decoration: widget.isDarkMode
          ? AppTextFieldTheme.darkDecoration(
              hintText: widget.hintText,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    )
                  : null,
            )
          : AppTextFieldTheme.lightDecoration(
              hintText: widget.hintText,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    )
                  : null,
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/const/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final bool isExpanded;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 55,
    this.isExpanded = true,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpanded ? double.infinity : null,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.appColor,
          foregroundColor: foregroundColor ?? Colors.white,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(borderRadius),
          // ),
          textStyle: Theme.of(context).textTheme.bodyLarge,
        ),
        child: Text(text),
      ),
    );
  }
}

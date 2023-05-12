import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String hintText;
  final bool obscure;
  final bool readOnly;

  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final void Function(String?)? onSaved;

  final IconData? suffix;
  final IconData? prefix;
  final void Function()? prefixFunction;
  final void Function()? suffixFunction;

  final Color color;
  final Color suffixIconColor;

  final double borderRadius;
  final int maxLines;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscure = false,
    this.hintText = '',
    this.onChanged,
    this.onSubmitted,
    this.onSaved,
    this.prefix,
    this.suffix,
    this.suffixFunction,
    this.prefixFunction,
    this.color = AppColors.offWhiteColor,
    this.suffixIconColor = AppColors.offWhiteColor,
    this.borderRadius = 10.0,
    this.maxLines = 1,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        readOnly: readOnly,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscure,
        onChanged: onChanged,
        onSaved: onSaved,
        onFieldSubmitted: onSubmitted,
        cursorColor: color,
        maxLines: maxLines,
        textDirection: TextDirection.rtl,
        validator: (data) {
          if (data!.isEmpty) {
            return AppStrings.requiredValidation;
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.hintTextStyle(),
          hintTextDirection: TextDirection.rtl,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          prefixIcon: IconButton(
            onPressed: prefixFunction,
            icon: Icon(
              prefix,
              color: color,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: suffixFunction,
            icon: Icon(
              suffix,
              color: suffixIconColor,
            ),
            // color: primaryColor4,
          ),
        ),
      ),
    );
  }
}

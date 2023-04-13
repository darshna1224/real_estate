import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';

class CtmTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool? autofocus;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;

  const CtmTextFormField({
    super.key,
    this.focusNode,
    this.autofocus,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.hintTextColor,
    this.labelTextColor,
    this.keyboardType,
    this.labelText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: ThemeColors().themeColor,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ThemeColors().themeColor)),
        labelText: labelText,
        labelStyle: TextStyle(color: labelTextColor, fontSize: Sizes.s15.sp),
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor, fontSize: Sizes.s15.sp),
      ),
    );
  }
}

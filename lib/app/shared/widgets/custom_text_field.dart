import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/common/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.labelStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    this.isEnabled = true,
    this.hintText,
    this.maxLines = 1,
    this.maxLength,
    this.onTap,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.isPasswordHide = false,
    this.isRequired = true,
    required this.controller,
    this.onPressedIconPassword,
    this.isAutoValidate = true,
    this.inputAction,
    this.validator,
    this.onCompleted,
    this.isPasswordEmpty = false,
    this.isShowLabel = false,
  });

  final String label;
  final bool isRequired;
  final TextStyle? labelStyle;
  final bool isEnabled;
  final String? hintText;
  final int? maxLines;
  final int? maxLength;
  final Function()? onTap;
  final TextInputType textInputType;
  final bool isPassword;
  final bool isPasswordHide;
  final TextEditingController controller;
  final void Function()? onPressedIconPassword;
  final bool isAutoValidate;
  final TextInputAction? inputAction;
  final String? Function(String?)? validator; // Perubahan tipe data di sini
  final VoidCallback? onCompleted; // Perubahan tipe data di sini
  final bool isPasswordEmpty;
  final bool isShowLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Visibility(
          visible: isShowLabel,
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: regularText16,
              children: [
                const WidgetSpan(
                  child: SizedBox(
                    width: 16,
                  ),
                ),
                TextSpan(
                  text: label,
                  style: labelStyle,
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: 4,
                  ),
                ),
                if (isRequired)
                  TextSpan(
                    text: '*',
                    style: semiBoldText14.copyWith(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          validator: validator,
          enabled: isEnabled,
          obscureText: isPasswordHide,
          controller: controller,
          style: regularText16,
          cursorColor: Colors.blue,
          keyboardType: textInputType,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.transparent,
            filled: true,
            suffixIcon: isPassword
                ? IconButton(
                    padding: const EdgeInsets.only(right: 16),
                    icon: Icon(
                      isPasswordHide ? Icons.visibility_off : Icons.visibility,
                    ),
                    color: Colors.black,
                    onPressed: onPressedIconPassword,
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(27.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: themeData.primaryColor,
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(27),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: themeData.primaryColor,
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(27.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.blue,
                style: BorderStyle.solid,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
          ),
          onEditingComplete: onCompleted,
          readOnly: onTap != null,
          onTap: onTap,
          textInputAction: inputAction,
          autovalidateMode:
              isAutoValidate ? AutovalidateMode.onUserInteraction : null,
        ),
      ],
    );
  }
}

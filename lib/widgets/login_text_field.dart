import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginTextField extends StatelessWidget {
  final String? fieldText;
  final Function()? onClick;
  final IconData? icon;
  final IconData? suffixIcon;
  bool obscureTexts;

  final Function()? suffixPress;

  final String? Function(String?)? validator;

  final TextEditingController? controller;

  LoginTextField({
    super.key,
    this.fieldText,
    this.onClick,
    this.icon,
    this.suffixIcon,
    this.validator,
    this.suffixPress,
    this.controller,
    required this.obscureTexts,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // borderRadius: BorderRadius.circular(4),
      child: TextFormField(
        enableSuggestions: EditableText.debugDeterministicCursor,
        controller: controller,
        validator: validator,
        obscureText: obscureTexts,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: suffixPress,
            icon: Icon(
              suffixIcon,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          fillColor: Theme.of(context).colorScheme.onSecondary,
          filled: true,
          hintText: fieldText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          prefixIcon: Icon(
            icon,
            size: 22,
            color: Theme.of(context).colorScheme.primary,
          ),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
        ),
      ),
    );
  }
}

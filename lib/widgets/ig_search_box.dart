import 'package:flutter/material.dart';

class IgSearchBox extends StatelessWidget {
  final String hintText;
  final Function()? onTap;
  final IconData? suffixIcon;
  final double? height;
  const IgSearchBox({
    required this.hintText,
    this.onTap,
    this.suffixIcon,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: SizedBox(
        height: height ?? 36,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true,
            suffixIcon: IconButton(
              onPressed: () {
                onTap ?? Navigator.pop(context);
              },
              icon: Icon(suffixIcon ?? Icons.close),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

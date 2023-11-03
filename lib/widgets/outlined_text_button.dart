// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class OutlinedTextButton extends StatelessWidget {
  final String buttonName;
  final double? height;
  final double? width;
  final Function()? ontap;
  final Color? colors;
  const OutlinedTextButton({
    required this.buttonName,
    this.height,
    this.width,
    this.ontap,
    this.colors,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    buttonName;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
              side: BorderSide(
                width: 1.5,
                color: colors ?? Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: ontap,
        child: Text(
          buttonName,
          style: TextStyle(
            color: colors ?? Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

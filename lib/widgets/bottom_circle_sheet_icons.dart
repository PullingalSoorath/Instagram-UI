// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomCircleSheetIcons extends StatelessWidget {
  final String nameOfButton;
  final String svgIcon;
  const BottomCircleSheetIcons({
    required this.nameOfButton,
    required this.svgIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 1.5, color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
          ),
          height: 60,
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              svgIcon,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          nameOfButton,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}

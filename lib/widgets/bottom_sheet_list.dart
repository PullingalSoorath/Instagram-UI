// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetList extends StatelessWidget {
  final String? text;
  final String? svgIcon;
  final String? title;
  final String? subtitle;
  final IconData? icons;
  final Color? iconColor;
  final Color? textcolor;
  final double? iconSize;
  const BottomSheetList({
    this.iconSize,
    this.icons,
    this.text,
    this.svgIcon,
    this.title,
    this.subtitle,
    this.iconColor,
    this.textcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 11, left: 10),
      child: Row(
        children: [
          if (icons != null)
            Icon(
              icons,
              size: iconSize ?? 32.0,
              color: iconColor,
            ),
          if (svgIcon != null)
            SvgPicture.asset(
              svgIcon!,
              color: Theme.of(context).colorScheme.primary,
              height: 20,
            ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Text(
                title ?? '',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                subtitle ?? '',
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
          Text(
            text ?? '',
            style: TextStyle(
                color: textcolor ?? Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}

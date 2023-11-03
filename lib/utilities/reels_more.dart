// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramproject/widgets/bottom_circle_sheet_icons.dart';
import 'package:instagramproject/widgets/ig_bottom_sheet.dart';
import 'package:instagramproject/widgets/bottom_sheet_list.dart';

class ReelsMore extends StatelessWidget {
  const ReelsMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgBottomSheet(
      height: 415.0,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(50)),
            height: 8,
            width: 60,
          ),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomCircleSheetIcons(
                nameOfButton: 'Save',
                svgIcon: 'assets/saved-icon.svg',
              ),
              BottomCircleSheetIcons(
                nameOfButton: 'Remix',
                svgIcon: 'assets/Rimix.svg',
              ),
              BottomCircleSheetIcons(
                nameOfButton: 'Sequence',
                svgIcon: 'assets/instagram-igtv-icon.svg',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              children: [
                Container(
                  height: 2,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                const SizedBox(
                  height: 8,
                ),
                const BottomSheetList(
                  icons: Icons.info_outline,
                  text: "Why you're seeing this post",
                ),
                const SizedBox(
                  height: 8,
                ),
                const BottomSheetList(
                  icons: CupertinoIcons.eye,
                  text: "Intrested",
                ),
                const SizedBox(
                  height: 8,
                ),
                const BottomSheetList(
                  icons: CupertinoIcons.eye_slash,
                  text: "Not Intrested",
                ),
                const SizedBox(
                  height: 8,
                ),
                const BottomSheetList(
                  icons: Icons.report_gmailerrorred,
                  iconColor: Colors.red,
                  text: 'Report',
                  textcolor: Colors.red,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                const BottomSheetList(
                  icons: CupertinoIcons.square_fill_line_vertical_square,
                  text: "Manage suggested content",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

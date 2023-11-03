// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class IgBottomSheet extends StatelessWidget {
  final Widget child;
  final double? height;
  const IgBottomSheet({
    required this.child,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,

      ///adjust height as needed
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Theme.of(context).colorScheme.background
            : Colors.grey[900],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: child,
      //  Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const SizedBox(
      //           height: 35,
      //         ),
      //         Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(30),
      //             color: Theme.of(context).colorScheme.onPrimary,
      //           ),
      //           width: 55,
      //           height: 4,
      //         )
      //       ],
      //     ),
      //     child,
      //   ],
      // ),
    );
  }
}

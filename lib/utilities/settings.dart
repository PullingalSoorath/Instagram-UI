import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







//  showModalBottomSheet(
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       ),
//                     ),
//                     context: context,
//                     builder: (context) {
//                       return IgBottomSheet(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               const Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   BottomCircleSheetIcons(
//                                       svgIcon: 'assets/saved-icon.svg',
//                                       nameOfButton: 'Save'),
//                                   BottomCircleSheetIcons(
//                                     svgIcon: 'assets/Rimix.svg',
//                                     nameOfButton: 'Remix',
//                                   ),
//                                   BottomCircleSheetIcons(
//                                     svgIcon: 'assets/qr code.svg',
//                                     nameOfButton: 'QR code',
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Container(
//                                 height: 0.2,
//                                 width: double.infinity,
//                                 color: Theme.of(context).colorScheme.onPrimary,
//                               ),
//                               const BottomSheetList(
//                                   svgIcon: 'assets/instagram-share-icon.svg',
//                                   title: "We're moving things around!",
//                                   subtitle: 'See where to share and link'),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 height: 0.2,
//                                 width: double.infinity,
//                                 color: Theme.of(context).colorScheme.onPrimary,
//                               ),
//                               const BottomSheetList(
//                                 icons: Icons.star_border,
//                                 text: 'Add to Favorite',
//                               ),
//                               const BottomSheetList(
//                                   icons: Icons.person_off_outlined,
//                                   text: 'Unfollow'),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 height: 0.2,
//                                 width: double.infinity,
//                                 color: Theme.of(context).colorScheme.onPrimary,
//                               ),
//                               const BottomSheetList(
//                                 icons: Icons.info_outline,
//                                 text: "Why you're seeing this post",
//                               ),
//                               const BottomSheetList(
//                                 icons: CupertinoIcons.eye_slash,
//                                 text: 'Hide',
//                               ),
//                               const BottomSheetList(
//                                 icons: CupertinoIcons.person_circle,
//                                 text: 'About this account',
//                               ),
//                               const BottomSheetList(
//                                 icons: Icons.report,
//                                 iconColor: Colors.red,
//                                 text: 'Report',
//                                 textcolor: Colors.red,
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
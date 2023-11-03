import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/pages/loadingstatus.dart';

class MyStatusPage extends StatefulWidget {
  const MyStatusPage({super.key});

  @override
  State<MyStatusPage> createState() => _MyStatusPageState();
}

class _MyStatusPageState extends State<MyStatusPage> {
  bool isliked = false;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
// loading widget

                      isLoading
                          ? Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg',
                                      ), // Replace with your image
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.1),
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.grey[700],
                                        backgroundColor: Colors.white,
                                        strokeWidth: 4.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : PageView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const ImageContainer();
                              },
                            ),

                      // Container(
                      //   color: Colors.white70,
                      //   height: double.infinity,
                      //   child: Image.network(
                      //     'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              height: 10,
                              color: Colors.transparent,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 2.5,
                                      right: 2.5,
                                    ),
                                    child: Container(
                                      height: 4,
                                      width: double.infinity,
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 2.5,
                                      right: 2.5,
                                    ),
                                    child: Container(
                                      height: 4,
                                      width: double.infinity,
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 2.5,
                                      right: 2.5,
                                    ),
                                    child: Container(
                                      height: 4,
                                      width: double.infinity,
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        foregroundImage: NetworkImage(
                                          'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
                                        ),
                                        radius: 22,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pullingal Soorath',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.replay_30_outlined,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                foregroundImage: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2016/11/29/11/45/children-1869265_640.jpg'),
                                                radius: 10,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '_duke_bhakthan_',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      const Spacer(),
                      // Expanded(
                      //   child: Center(
                      //     child: SizedBox(
                      //       height: 45,
                      //       child: TextField(
                      //         textAlignVertical: TextAlignVertical.bottom,
                      //         decoration: InputDecoration(
                      //             focusedBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(30),
                      //               borderSide: const BorderSide(
                      //                   width: 1, color: Colors.white),
                      //             ),
                      //             enabledBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(30),
                      //               borderSide: const BorderSide(
                      //                   width: 1, color: Colors.white),
                      //             ),
                      //             hintText: 'Send Message',
                      //             hintStyle:
                      //                 const TextStyle(color: Colors.white)),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isliked = !isliked;

                                isliked
                                    ? showDialog(
                                        barrierDismissible: false,
                                        barrierColor: Colors.transparent,
                                        context: context,
                                        builder: (BuildContext context) {
                                          // Return the AlertDialog widget here
                                          return AlertDialog(
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            icon: isliked
                                                ? const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                    size: 100,
                                                  )
                                                : null,
                                          );
                                        },
                                      )
                                    : null;
                                isliked
                                    ? Future.delayed(
                                        const Duration(milliseconds: 800), () {
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
                                      })
                                    : null;
                              },
                            );
                          },
                          icon: !isliked
                              ? const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 32,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 32,
                                )),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/instagram-share-icon.svg',
                          // ignore: deprecated_member_use
                          color: Colors.white,
                          height: 23,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

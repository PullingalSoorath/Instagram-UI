import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/pages/login_page.dart';
import 'package:instagramproject/pages/tabs/tab1.dart';
import 'package:instagramproject/pages/tabs/tab2.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/widgets/bottom_sheet_list.dart';
import 'package:instagramproject/widgets/ig_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IgInstagramPage extends StatefulWidget {
  const IgInstagramPage({super.key});

  @override
  State<IgInstagramPage> createState() => _IgInstagramPageState();
}

class _IgInstagramPageState extends State<IgInstagramPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Row(
            children: [
              Text(
                'pullingal',
              ),
              Icon(Icons.keyboard_arrow_down_outlined),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
              )
            ],
          ),
          actions: [
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  context: context,
                  builder: (context) {
                    return const IgBottomSheet(
                      height: 360,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          BottomSheetList(
                            svgIcon: 'assets/instagram-reels-outlined.svg',
                            text: 'Reels',
                          ),
                          BottomSheetList(
                            icons: Icons.grid_on_outlined,
                            text: 'Post',
                            iconSize: 22,
                          ),
                          BottomSheetList(
                            icons: Icons.add_task,
                            text: 'Story',
                            iconSize: 22,
                          ),
                          BottomSheetList(
                            icons: Icons.live_tv,
                            text: 'Story Highlights',
                            iconSize: 22,
                          ),
                          BottomSheetList(
                            icons: CupertinoIcons.antenna_radiowaves_left_right,
                            text: 'Live',
                            iconSize: 22,
                          ),
                          BottomSheetList(
                            icons: CupertinoIcons.book,
                            text: 'Guide',
                            iconSize: 22,
                          ),
                          BottomSheetList(
                            icons: CupertinoIcons
                                .line_horizontal_3_decrease_circle,
                            text: 'Ad',
                            iconSize: 22,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: SvgPicture.asset(
                'assets/add.svg', height: 22,
                // ignore: deprecated_member_use
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  context: context,
                  builder: (context) {
                    return IgBottomSheet(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(50)),
                            width: 55,
                            height: 8,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const BottomSheetList(
                            icons: Icons.settings_outlined,
                            iconSize: 25,
                            text: 'Settings and privacy',
                          ),
                          const BottomSheetList(
                            svgIcon: 'assets/threads-app-icon.svg',
                            iconSize: 25,
                            text: 'Threads',
                          ),
                          const BottomSheetList(
                            icons: Icons.schedule,
                            iconSize: 25,
                            text: 'Shedule content',
                          ),
                          const BottomSheetList(
                            icons: Icons.star_border,
                            iconSize: 25,
                            text: 'Favorites',
                          ),
                          const BottomSheetList(
                            icons: Icons.person_add,
                            iconSize: 25,
                            text: 'Discover People',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            child: const BottomSheetList(
                              icons: Icons.logout_outlined,
                              iconColor: Colors.red,
                              iconSize: 25,
                              text: ' Logout',
                              textcolor: Colors.red,
                            ),
                            onTap: () async {
                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              pref.remove("email");
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        foregroundImage: NetworkImage(
                          'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
                        ),
                        radius: 45,
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            '113',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '510',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '401',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Pullingal Soorath',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Photography Videography',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'OPTIMUZ GAMING',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'MOBILE PHOTOGRAPHY',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            '@pullingal_soorath',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            '...more',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      height: 60,
                      width: 600,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Professional dashboard',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(
                              '4 accounts reach in the last 30 days',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(children: [
                      Expanded(
                        child: SizedBox(
                          height: 32,
                          child: Container(
                            height: 30,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 32,
                        child: Container(
                          height: 30,
                          width: 185,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Share Profile',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                    ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 105,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.background,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        final pic = pics[index];
                        final data = myData[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      index < 2
                                          ? CircleAvatar(
                                              backgroundColor: Colors.grey[700],
                                              backgroundImage:
                                                  NetworkImage(pic),
                                              radius: 35,
                                            )
                                          : CircleAvatar(
                                              radius: 36,
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                              child: index == 2
                                                  ? CircleAvatar(
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .background,
                                                      radius: 35,
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 30,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                      ),
                                                    )
                                                  : CircleAvatar(
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .background,
                                                      radius: 35,
                                                    ),
                                            )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                data,
                                style: const TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(left: 5, right: 5),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //             left: 5, right: 5, top: 5, bottom: 5),
                  //         child: Container(
                  //           height: 30,
                  //           width: 185,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(8),
                  //             color: Theme.of(context).colorScheme.onSecondary,
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Text(
                  //                 'Edit Profile',
                  //                 style: TextStyle(
                  //                   color:
                  //                       Theme.of(context).colorScheme.primary,
                  //                   fontSize: 13,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //             left: 5, right: 5, top: 5, bottom: 5),
                  //         child: Container(
                  //           height: 30,
                  //           width: 185,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(8),
                  //             color: Theme.of(context).colorScheme.onSecondary,
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Text(
                  //                 'Share Profile',
                  //                 style: TextStyle(
                  //                   color:
                  //                       Theme.of(context).colorScheme.primary,
                  //                   fontWeight: FontWeight.w600,
                  //                   fontSize: 13,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              TabBar(
                indicatorColor: Theme.of(context).colorScheme.primary,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_on,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.picture_in_picture_alt,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 660, // Set a specific height
                child: TabBarView(
                  children: [
                    PostTab1(),
                    PostTab2(),
                  ],
                ),
              ),

              // Column(
              //   children: [
              //     SizedBox(
              //       height: 720, // Set a specific height
              //       child: Scrollable(
              //         scrollBehavior: ScrollBehavior(),
              //         viewportBuilder: (context, position) => TabBarView(
              //           children: [
              //             PostTab1(),
              //             PostTab2(),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        )),
      ),
    );
  }
}

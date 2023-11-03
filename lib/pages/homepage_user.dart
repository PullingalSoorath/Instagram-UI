import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/theme/theme_provider.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/utilities/treds.dart';
import 'package:instagramproject/widgets/ig_search_box.dart';
import 'package:instagramproject/widgets/posts.dart';
import 'package:instagramproject/utilities/status_list_view.dart';
import 'package:provider/provider.dart';

import '../widgets/suggessions_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  List<int> items = List.generate(3, (index) => index);

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // User has reached the end of the list, load more items here
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    if (!isLoading && items.length < names.length) {
      // Check if the current item count is less than 20
      setState(() {
        isLoading = true;
      });

      // Simulate loading more items
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          final int remainingItems = names.length - items.length;
          final int itemsToAdd = remainingItems <= 3 ? remainingItems : 3;
          items.addAll(
              List.generate(itemsToAdd, (index) => index + items.length));
          isLoading = false;
        });
      });
    }
  }

  // void _loadMoreItems() {
  //   if (!isLoading) {
  //     setState(() {
  //       isLoading = true;
  //     });

  //     // Simulate loading more items

  //     Future.delayed(const Duration(seconds: 3), () {
  //       setState(() {
  //         items.addAll(List.generate(3, (index) => index + items.length));
  //         isLoading = false;
  //       });
  //     });
  //   }
  // }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void _closeDrawer() {
    _scaffoldKey.currentState?.closeEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _closeDrawer();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 34,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'pullingal',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.video_call_outlined,
                          size: 35,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_square,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              DrawerHeader(
                // margin: EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: IgSearchBox(hintText: 'Search'),
                    ),
                    Container(
                      height: 105,
                      width: double.infinity,
                      color: Theme.of(context).colorScheme.background,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pics.length,
                        itemBuilder: (context, index) {
                          final pic = pics[index];
                          final name = names[index];
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    index > 0
                                        ? Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CircleAvatar(backgroundColor: Colors.grey[800],
                                                backgroundImage:
                                                    NetworkImage(pic),
                                                radius: 35,
                                              ),
                                              index == 2
                                                  ? Container(
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSecondary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      height: 40,
                                                      width: 80,
                                                      child: const Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .play_arrow_rounded,
                                                                size: 15,
                                                              ),
                                                              Text(
                                                                'Star Boy',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            'music',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .grey),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  : const SizedBox(),
                                            ],
                                          )
                                        : Stack(
                                            children: [
                                              CircleAvatar(backgroundColor: Colors.grey[700],
                                                backgroundImage:
                                                    NetworkImage(pic),
                                                radius: 35,
                                              ),
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .onSecondary,
                                                child: Icon(Icons.add,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary),
                                              )
                                            ],
                                          ),
                                  ],
                                ),
                                index < 1
                                    ? const Text(
                                        'Your Note',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    : Text(
                                        name,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Message'),
                    Text(
                      'Request (3)',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: names.length - 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: const Alignment(1, 0.9),
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(pics[index + 1]),
                                  radius: 30,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                                index % 2 == 0 && index < 10
                                    ? const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Color.fromARGB(
                                          255,
                                          97,
                                          255,
                                          102,
                                        ),
                                      )
                                    : const SizedBox(
                                        height: 0,
                                        width: 0,
                                      ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(names[index + 1]),
                                  Text(
                                    comment[index + 1],
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            index % 2 == 0
                                ? const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                            const Icon(CupertinoIcons.camera)
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Fontspring',
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary),
        ),
        actions: [
// dark light theem

          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: Icon(
              Theme.of(context).brightness == Brightness.light
                  ? CupertinoIcons.sun_max
                  : CupertinoIcons.moon_fill,
              size: 30,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            color: Theme.of(context).colorScheme.primary,
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.heart,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          IconButton(
            onPressed: () {
              _openEndDrawer();
            },
            icon: SvgPicture.asset(
              'assets/Message.svg',
              width: 23,
              // ignore: deprecated_member_use
              color: Theme.of(context).colorScheme.primary,
            ),
            // splashColor: Colors.transparent,
            // highlightColor: Colors.transparent,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(
              height: 108,
              child: StatusListView(
                items: pics,
              ),
            ),
            // Posts(name: names[2]),
            ListView.builder(
              // controller: _scrollController,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length + 1,
              itemBuilder: (context, index) {
                if (index == items.length) {
                  if (isLoading) {
                    return Center(
                      child: Column(
                        children: [
                          CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.onSecondary,
                            backgroundColor: Colors.grey,
                            // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                            strokeWidth: 1.5,
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }
                if (index == 3) {
                  return const SuggessionsList();
                } else if (index == 1) {
                  return const Threads();
                } else if (index == names.length - 1) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onSecondary,
                      backgroundColor: Colors.grey,
                      // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      strokeWidth: 1.5,
                    ),
                  );
                } else {
                  return Posts(
                    name: names[index + 1],
                    comments: comment[index],
                    profilephoto: pics[index + 1],
                    // profilephoto:
                    //     'https://i.pravatar.cc/1000?img=${index + 30}',
                    index: index,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

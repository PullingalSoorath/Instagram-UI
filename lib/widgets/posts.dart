// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/widgets/ig_search_box.dart';
import 'package:instagramproject/widgets/outlined_text_button.dart';

import 'bottom_sheet_list.dart';
import 'bottom_circle_sheet_icons.dart';
import 'ig_bottom_sheet.dart';

class Posts extends StatefulWidget {
  final String name;

  final String comments;

  final String profilephoto;

  final int index;

  const Posts({
    super.key,
    required this.name,
    required this.comments,
    required this.profilephoto,
    required this.index,
  });

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool isTag = false;

  bool isFavorite = false;

  int _likesCount = 455;

  bool isFollowed = false;

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    if (widget.index % 2 == 0) {
      isVisible = true;
    } else {
      isVisible = false;
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(widget.profilephoto),
                backgroundColor: Colors.grey[400],
              ),

              const SizedBox(
                width: 10,
              ),
              Text(
                widget.name,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Visibility(
                visible: isVisible,
                child: OutlinedTextButton(
                  buttonName: isFollowed ? 'Followed' : 'Follow',
                  height: 28,
                  // width: 80,
                  ontap: () {
                    setState(() {
                      isFollowed = !isFollowed;
                    });
                  },
                ),
              ),
              // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              IconButton(
                onPressed: () {
                  morePost(context);
                },
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
              // const Icon(Icons.more_vert)
            ],
          ),
        ),

//post container

        GestureDetector(
          onDoubleTap: () {
            setState(() {
              isFavorite = !isFavorite;
              isFavorite ? _likesCount++ : _likesCount--;
            });
          },
          child: Container(
            width:
                double.infinity, // Set the width and height of your container

            color: Colors.blue, // Set the background color of the container
            child: Image.network(
              widget.profilephoto, // Replace with your image URL
              fit: BoxFit.cover, // BoxFit property to control image fit
            ),
          ),

          //  Container(
          //   height: ,
          //   color: Colors.grey[800],
          //   child: Image.network(
          //     widget.profilephoto,
          //     fit: BoxFit.cover,
          //   ),
          // ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
//like comment share button

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        isFavorite ? _likesCount++ : _likesCount--;
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_outline,
                      size: 30,
                      color: isFavorite ? Colors.red : null,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        // isScrollControlled: true,
                        // enableDrag: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        context: context,
                        builder: (context) {
                          return IgBottomSheet(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: 60,
                                      height: 8,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    const Text('Comments'),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.info_outline,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Container(
                                    height: 0.6,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(
                                    10.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            height: 40,
                                            width: 200,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintStyle: TextStyle(
                                                  fontSize: 14,
                                                ),
                                                hintText:
                                                    'Add your comment here...',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // TextField(),
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.gif_box_outlined,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/instagram-comment-icon.svg',
                      height: 24,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor:
                            Theme.of(context).colorScheme.onBackground,
                        enableDrag: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        context: context,
                        builder: (context) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 8,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  // color: Theme.of(context).brightness ==
                                  //         Brightness.light
                                  //     ? Colors.white
                                  //     : Colors.grey[900],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                height: 55,
                                child: const IgBottomSheet(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 14.0),
                                    child: IgSearchBox(
                                      hintText: 'Search',
                                      suffixIcon: Icons.people_alt,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Container(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  // color: Theme.of(context).brightness ==
                                  //         Brightness.light
                                  //     ? Theme.of(context).colorScheme.background
                                  //     : Colors.grey[900],
                                  child: ListView.builder(
                                    itemCount: pics.length - 1,
                                    itemBuilder: (context, index) {
                                      final pic = pics[index + 1];
                                      final name = names[index + 1];
                                      return ListTile(
                                        leading: CircleAvatar(
                                            foregroundImage: NetworkImage(pic)),
                                        title: Text(name),
                                        trailing: const Icon(Icons.send),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/instagram-share-icon.svg',
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ],
              ),
            ),

//3 dots for switch between the posts

            // Row(
            //   children: [
            //     CircleAvatar(
            //       backgroundColor: Theme.of(context).colorScheme.onPrimary,
            //       radius: 3.5,
            //     ),
            //     const SizedBox(
            //       width: 3,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Theme.of(context).colorScheme.onPrimary,
            //       radius: 3.5,
            //     ),
            //     const SizedBox(
            //       width: 3,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Theme.of(context).colorScheme.onPrimary,
            //       radius: 3.5,
            //     ),
            //     const SizedBox(
            //       width: 100,
            //     ),
            //   ],
            // ),

//tag button

            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isTag = !isTag;
                    });
                  },
                  icon: isTag
                      ? SvgPicture.asset(
                          'assets/tag_choice.svg',
                          height: 23,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : SvgPicture.asset(
                          'assets/saved-icon.svg',
                          height: 23,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                )
              ],
            ),
          ],
        ),

// liked list circle avathar

        Padding(
          padding: const EdgeInsets.only(left: 12, top: 5),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundImage: const NetworkImage(
                            'https://i.pinimg.com/736x/a6/11/41/a611411ec9316fe64aee658c92072012.jpg'),
                        backgroundColor: Colors.grey[400],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundImage: const NetworkImage(
                            'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg'),
                        backgroundColor: Colors.grey[400],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Theme.of(context).colorScheme.background,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundImage: const NetworkImage(
                          'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg'),
                      backgroundColor: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Liked by ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                widget.name,
                style: const TextStyle(),
              ),
              Text(
                ' and ${_likesCount.toString()} others...',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text(
                widget.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.comments),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '.... more',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Text(
                'View all comments',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                    'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg'),
                backgroundColor: Colors.grey[800],
                radius: 15,
              ),
              Expanded(
                child: Container(
                  // height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<dynamic> morePost(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return IgBottomSheet(
          height: 490,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(50)),
                  height: 8,
                  width: 60,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomCircleSheetIcons(
                      svgIcon: 'assets/saved-icon.svg',
                      nameOfButton: 'Save',
                    ),
                    BottomCircleSheetIcons(
                      svgIcon: 'assets/Rimix.svg',
                      nameOfButton: 'Remix',
                    ),
                    BottomCircleSheetIcons(
                      svgIcon: 'assets/qr code.svg',
                      nameOfButton: 'QR code',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 0.2,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const BottomSheetList(
                    svgIcon: 'assets/instagram-share-icon.svg',
                    title: "We're moving things around!",
                    subtitle: 'See where to share and link'),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 0.2,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const BottomSheetList(
                  icons: Icons.star_border,
                  text: 'Add to Favorite',
                ),
                const SizedBox(
                  height: 5,
                ),
                const BottomSheetList(
                  icons: Icons.person_off_outlined,
                  text: 'Unfollow',
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 0.2,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const BottomSheetList(
                  icons: Icons.info_outline,
                  text: "Why you're seeing this post",
                ),
                const SizedBox(
                  height: 2.5,
                ),
                const BottomSheetList(
                  icons: CupertinoIcons.eye_slash,
                  text: 'Hide',
                ),
                const SizedBox(
                  height: 2.5,
                ),
                const BottomSheetList(
                  icons: CupertinoIcons.person_circle,
                  text: 'About this account',
                ),
                const SizedBox(
                  height: 2.5,
                ),
                const BottomSheetList(
                  icons: Icons.report_gmailerrorred,
                  iconColor: Colors.red,
                  text: 'Report',
                  textcolor: Colors.red,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/widgets/ig_bottom_sheet.dart';
import 'package:instagramproject/widgets/ig_search_box.dart';

import '../utilities/reels_more.dart';
import '../widgets/outlined_text_button.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: PageView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        itemCount: statusItems.length,
        itemBuilder: (context, index) {
          final datas = statusItems[index];
          final name = datas['name'];
          final pics = datas['pics'];

          return SafeArea(
            child: ReelsItems(
              pic: pics,
              names: name,
            ),
          );
        },
      ),
    );
  }
}

class ReelsItems extends StatefulWidget {
  const ReelsItems({
    super.key,
    required this.pic,
    required this.names,
  });

  final dynamic pic;
  final String names;

  @override
  State<ReelsItems> createState() => _ReelsItemsState();
}

class _ReelsItemsState extends State<ReelsItems> {
  int likes = 488;

  bool isLiked = false;

  bool showFollow = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              isLiked = !isLiked;
              isLiked ? likes++ : likes--;
            });
          },
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              widget.pic,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            const Expanded(
              child: SizedBox(
                child: Center(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                              isLiked ? likes++ : likes--;
                            });
                          },
                          icon: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            size: 35,
                            color: isLiked ? Colors.red : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          '$likes',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
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
                                                  backgroundColor: Colors.grey,
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
                                                        borderSide:
                                                            BorderSide.none,
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
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
                            height: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '202',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      height: 8,
                                      width: 60,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0,
                                      ),
                                      child: Container(
                                        height: 55,
                                        color: Colors.transparent,
                                        child: const IgBottomSheet(
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
                                        //  Theme.of(context).brightness ==
                                        //         Brightness.light
                                        //     ? Theme.of(context)
                                        //         .colorScheme
                                        //         .background
                                        //     : Colors.grey[900],
                                        child: ListView.builder(
                                          itemCount: pics.length - 1,
                                          itemBuilder: (context, index) {
                                            final pic = pics[index + 1];
                                            final name = names[index + 1];
                                            return ListTile(
                                              leading: CircleAvatar(
                                                  backgroundColor:
                                                      Colors.grey[700],
                                                  foregroundImage:
                                                      NetworkImage(pic)),
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
                            height: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '482',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              context: context,
                              builder: (context) {
                                return const ReelsMore();
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              color: Colors.white,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              color: Colors.grey[900],
                              child: Image.network(
                                widget.pic,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 25,
                  width: 88,
                  color: const Color.fromARGB(97, 114, 114, 114),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.card_giftcard,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Send gift',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(widget.pic),
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.names,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Visibility(
                    visible: showFollow,
                    child: OutlinedTextButton(
                      buttonName: 'Follow',
                      height: 25,
                      colors: Colors.white,
                      ontap: () {
                        setState(() {
                          showFollow = !showFollow;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '💓 Get ahead of the curve with our tech...',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 25,
                      width: 152,
                      color: const Color.fromARGB(97, 114, 114, 114),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              CupertinoIcons.music_note_2,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'starboy ft.Daft Punk',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 25,
                      width: 152,
                      color: const Color.fromARGB(97, 114, 114, 114),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'starboy ft.Daft Punk',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

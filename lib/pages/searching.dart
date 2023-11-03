import 'package:flutter/material.dart';
import 'package:instagramproject/utilities/datas.dart';

import '../widgets/ig_search_box.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: IgSearchBox(
                  hintText: 'Search',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 15),
                child: Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              personDatas.isNotEmpty
                  ? ListView.builder(
                      itemCount: personDatas.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final profile = personDatas[index];
                        final name = profile['name'];
                        final text = profile['subtitle'];
                        final subtext = profile['subtext'];
                        final picture = profile['pics'];

                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: index < 3
                              ? Container(
                                  height: 60,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  // color: Colors.grey[800],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 18),
                                            child: Icon(
                                              Icons.search,
                                              size: 30,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 32,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(name ?? ''),
                                            ],
                                          )
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            personDatas.removeAt(index);
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  height: 60,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  // color: Colors.grey[800],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: CircleAvatar(
                                              foregroundImage:
                                                  NetworkImage(picture),
                                              radius: 25,
                                              backgroundColor: Colors.grey[400],
                                              child: const Icon(
                                                Icons.person,
                                                size: 46,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                name ?? '',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                text ?? '',
                                              ),
                                              Text(
                                                subtext ?? '',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(
                                            () {
                                              personDatas.removeAt(index);
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        'No Search History Available!',
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

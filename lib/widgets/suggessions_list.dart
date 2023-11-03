import 'package:flutter/material.dart';
import 'package:instagramproject/utilities/datas.dart';

class SuggessionsList extends StatefulWidget {
  const SuggessionsList({
    super.key,
  });
  // bool islike = false;

  @override
  State<SuggessionsList> createState() => _SuggessionsListState();
}

class _SuggessionsListState extends State<SuggessionsList> {
  bool showcircle = false;

  List<int> follow = [];

  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return lisOfDatas.isNotEmpty
        ? Container(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.grey[400]
                : Colors.grey[900],
            child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Suggested for you',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 270,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey[400]
                      : Colors.grey[900],
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lisOfDatas.length,
                    itemBuilder: (context, index) {
                      final profile = lisOfDatas[index];
                      final name = profile['names'];
                      final follower1 = profile['follower1'];
                      final follower2 = profile['follower2'];
                      final picture = profile['picture'];
                      final pic1 = profile['followerpic1'];
                      final pic2 = profile['followerpic2'];
                      return Padding(
                        padding: const EdgeInsets.only(left: 13, bottom: 12),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color:
                                      const Color.fromARGB(255, 111, 111, 111)),
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(5)),
                          width: 190,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      lisOfDatas.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    size: 22,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(picture),
                                    radius: 70,
                                    backgroundColor: Colors.grey[700],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(name),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 45,
                                        height: 30,
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                              child: CircleAvatar(
                                                backgroundImage:
                                                    NetworkImage(pic2),
                                                backgroundColor:
                                                    Colors.grey[600],
                                                radius: 10,
                                              ),
                                            ),
                                            CircleAvatar(
                                              backgroundImage:
                                                  NetworkImage(pic1),
                                              backgroundColor: Colors.grey[900],
                                              radius: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        'Followed by\n$follower1 and $follower2...',
                                        style: const TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: SizedBox(
                                      height: 28,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          setState(() {
                                            // follow.add(index);
                                            follow.contains(index)
                                                ? follow.remove(index)
                                                : follow.add(index);
                                          });
                                          await Future.delayed(
                                              const Duration(seconds: 5));

                                          if (follow.contains(index)) {
                                            setState(() {
                                              lisOfDatas.removeAt(index);
                                              follow.remove(index);
                                            });
                                          }
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Visibility(
                                              visible: follow.contains(index)
                                                  ? !showcircle
                                                  : false,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: SizedBox(
                                                  height: 10,
                                                  width: 10,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.white,
                                                    strokeWidth: 2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            follow.contains(index)
                                                ? const Text('Following...')
                                                : const Text('Follow'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        : Column(
            children: [
              Visibility(
                visible: isContainerVisible,
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Suggessions Removed',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isContainerVisible = false;
                            });
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}

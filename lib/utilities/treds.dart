
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/utilities/threadspage/page3.dart';

class Threads extends StatefulWidget {
  const Threads({super.key});

  @override
  State<Threads> createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  final _controllor = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[400]
          : Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            color: Theme.of(context).colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(50),
                        child: Container(
                          color: Colors.black,
                          width: 35,
                          height: 35,
                          child: SvgPicture.asset(
                            'assets/threads-app-icon.svg',
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Colors.black,
                      //   // Theme.of(context).colorScheme.onSecondary,
                      //   child: SvgPicture.asset(
                      //     'assets/threads-app-icon.svg',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Threads for you',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Open app',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 110,
            width: double.infinity,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controllor,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: List.generate(
                5,
                (index) => Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ThreadsPage3(
                      index: index,
                      name: names,
                      comments: comment,
                      pics: pics,
                    ),
                  ),
                ),
                growable: true,
              ),
              // ThreadsPage3(),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.background,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => SizedBox(
                    height: 25,
                    width: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: index == _currentPage
                              ? Colors.blue
                              : Theme.of(context).colorScheme.onSecondary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  growable: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

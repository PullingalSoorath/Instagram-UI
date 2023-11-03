import 'package:flutter/material.dart';

import '../pages/my_status_page.dart';

class IgMyPsofileStatus extends StatelessWidget {
  const IgMyPsofileStatus({
    super.key,
    required this.items,
    required this.index,
    required this.name,
  });

  final int index;
  final List<String> items;
  final List<String> name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.yellow,
                        Colors.orange,
                        Colors.red,
                        Colors.pink,
                        Colors.pinkAccent,
                      ],
                    ),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyStatusPage(),
                              ));
                        },
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage: NetworkImage(items[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: 30,
                height: 30,
                child: FloatingActionButton.small(
                  backgroundColor: Colors.blue,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          name[index],
        ),
      ],
    );
  }
}

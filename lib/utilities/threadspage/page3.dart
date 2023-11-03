import 'package:flutter/material.dart';

class ThreadsPage3 extends StatelessWidget {
  final int index;
  final List? name;
  final List? pics;
  final List? comments;

  const ThreadsPage3({
    super.key,
    required this.index,
    this.name,
    this.comments,
    this.pics,
  });

  @override
  Widget build(BuildContext context) {
    int likes = 366;
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.background,
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            // height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        foregroundImage: NetworkImage('${pics?[index + 1]}'),
                        backgroundColor: Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${name?[index + 1]} ',
                        style: const TextStyle(fontSize: 16),
                      ),
                      index % 2 == 0
                          ? Image.asset(
                              'assets/verified.png',
                              fit: BoxFit.cover,
                              height: 20,
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Text(
                    '${comments?[index]} ',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text('${likes + (33 * index + 3)} relpies'),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('${likes + (93 * index + 3)} likes'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

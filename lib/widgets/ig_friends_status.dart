import 'package:flutter/material.dart';
import 'package:instagramproject/pages/status_page.dart';
import 'package:instagramproject/utilities/datas.dart';

class IgFriendsStatus extends StatelessWidget {
  const IgFriendsStatus({
    super.key,
    required this.pics,
    required this.index,
    required this.name,
  });

  final int index;
  final List<String> pics;
  final List<String> name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
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
              width: 80.0,
              height: 80.0,
              child: Center(
                  child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.background,
                radius: 36,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FriendsStatusPage(),
                        ));
                  },
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage: NetworkImage(pics[index]),
                  ),
                ),
              )),
            ),
          ),
        ),
        Text(
          names[index],
          // style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

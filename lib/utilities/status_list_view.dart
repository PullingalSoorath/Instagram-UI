import 'package:flutter/cupertino.dart';
import 'package:instagramproject/utilities/datas.dart';
import 'package:instagramproject/widgets/ig_friends_status.dart';
import 'package:instagramproject/widgets/my_profile_status.dart';

class StatusListView extends StatelessWidget {
  final List<String> items;

  const StatusListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 1, bottom: 10),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          if (index < 1) {
            return IgMyPsofileStatus(
              items: items,
              index: index,
              name: names,
            );
          } else if (index > 0)
            // ignore: curly_braces_in_flow_control_structures
            return IgFriendsStatus(
              pics: items,
              index: index,
              name: names,
            );
          else {
            return Container(
              height: 0,
            );
          }
        },
      ),
    );
  }
}

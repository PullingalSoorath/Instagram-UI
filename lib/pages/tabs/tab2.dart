import 'package:flutter/material.dart';
import 'package:instagramproject/utilities/datas.dart';

class PostTab2 extends StatelessWidget {
  const PostTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pics.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        final picture = pics[index];
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.grey,
            child: Image.network(
              picture,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

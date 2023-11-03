import 'package:flutter/material.dart';
import 'package:instagramproject/utilities/datas.dart';

class PostTab1 extends StatelessWidget {
  const PostTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: uploads.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        final pics = uploads[index];
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Theme.of(context).colorScheme.onPrimary,
            child: Image.network(
              pics,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

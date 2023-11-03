import 'package:flutter/material.dart';

class ThreadsPage extends StatelessWidget {
  const ThreadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.pink,
        child: const Text(
          'page 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

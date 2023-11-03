import 'dart:async';
import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  int currentIndex = 0;
  List<String> imageUrls = [
    'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/09/01/20/23/ford-2705402_640.jpg',
    'https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_640.jpg',
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer to change the image every 5 seconds
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        // Increment the currentIndex to change the image
        currentIndex = (currentIndex + 1) % imageUrls.length;
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrls[currentIndex]),
        ),
      ),
    );
  }
}

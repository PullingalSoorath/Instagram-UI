import 'package:flutter/material.dart';
import 'package:instagramproject/homepage.dart';
import 'package:instagramproject/widgets/gradient_color.dart';

class LoadingSplashScreen extends StatefulWidget {
  const LoadingSplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingSplashScreenState createState() => _LoadingSplashScreenState();
}

class _LoadingSplashScreenState extends State<LoadingSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
            child: GradientColor(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: Colors.white),
              SizedBox(
                height: 10,
              ),
              Text(
                'Loading...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Fontspring',
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

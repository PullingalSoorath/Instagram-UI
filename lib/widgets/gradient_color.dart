import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  final Widget? child;
  final String? text;
  const GradientColor({
    this.text,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Colors.yellow,
            Colors.orange,
            Colors.red,
            Colors.pink,
            Colors.purple,
          ],
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

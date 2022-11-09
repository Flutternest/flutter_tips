//https://twitter.com/Flutternest/status/1590338281342136321?s=20&t=aDnY6NsZnBadMiIxZaGDUg

import 'package:flutter/material.dart';

class Tip4 extends StatelessWidget {
  const Tip4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => LinearGradient(
          colors: [
            Colors.blue.shade400,
            Colors.purple,
            Colors.purple.shade900,
          ],
          stops: const [0.1, 0.3, 0.9],
          tileMode: TileMode.mirror
        ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: const Text(
          'I ❤️ \nGradients',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.5,
            height: 1
          ),
        ),
      ),
    );
  }
}

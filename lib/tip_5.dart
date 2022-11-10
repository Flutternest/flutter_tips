// https://twitter.com/Flutternest/status/1590758215125733380?s=20&t=nEU3e-sdTko165TfBDlJVQ

import 'package:flutter/material.dart';

class Tip5 extends StatelessWidget {
  const Tip5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.red)),
        child: OverflowBox(
          minWidth: 0.0,
          minHeight: 0.0,
          maxWidth: double.infinity,
          maxHeight: double.infinity,
          child: Container(
            width: 300,
            height: 100,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            color: const Color(0xFF34D0F4),
            child: Text(
              "Think \noutside \nthe \nbox".toUpperCase(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

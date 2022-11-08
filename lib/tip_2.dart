// https://twitter.com/Flutternest/status/1589613520060297217?s=20&t=vHAFV8P6b1cezo-a0EDXyw

import 'package:flutter/material.dart';

class Tip2 extends StatelessWidget {
  const Tip2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(child: Text("This is a very very very very long text")),
        SizedBox(width: 10),
        Chip(label: Text('Label')),
      ],
    );
  }
}

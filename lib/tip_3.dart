// https://twitter.com/Flutternest/status/1589987779882385413?s=20&t=QYIypuTaBvjvPqeoI7NOaw

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tip3 extends StatefulWidget {
  const Tip3({super.key});

  @override
  State<Tip3> createState() => _Tip3State();
}

class _Tip3State extends State<Tip3> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(controller: controller)),
        IconButton(
          icon: const Icon(Icons.copy),
          onPressed: () async {
            if (controller.text.isNotEmpty) {
              await Clipboard.setData(ClipboardData(text: controller.text));
            }
          },
        ),
        IconButton(
          icon: const Icon(Icons.paste),
          onPressed: () async {
            if (!await Clipboard.hasStrings()) {
              return;
            } //no string in the clipboard

            final clipData = await Clipboard.getData("text/plain");
            final text = clipData?.text;
            if (text != null) {
              controller.text = text;
            }
          },
        ),
      ],
    );
  }
}

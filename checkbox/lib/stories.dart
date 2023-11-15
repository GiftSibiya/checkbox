import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  StoriesWidget({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      //---- Circle Avatar ----//
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueGrey,
          child: CircleAvatar(radius: 26, backgroundColor: Colors.amber),
        ),
        Text("index: $index")
      ],
    );
  }
}

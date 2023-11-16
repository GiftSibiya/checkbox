import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostsWidget extends StatelessWidget {
  PostsWidget({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 20,
      child: Column(
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text("User Name"),
              SizedBox(
                width: 150,
              ),
              Icon(Icons.more_vert)
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //--- Post //
          Container(
            height: 230,
            width: 280,
            color: Colors.orange,
            child: Center(
                child: Text(
              "index: $index",
              style: const TextStyle(fontSize: 25),
            )),
          )
        ],
      ),
    );
  }
}

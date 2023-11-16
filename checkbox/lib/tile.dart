import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DisListTile extends StatelessWidget {
  DisListTile({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.wallet_giftcard_outlined, color: Colors.amber),
              const SizedBox(
                width: 10,
              ),
              Text("Item no. $index",
                  style: const TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}

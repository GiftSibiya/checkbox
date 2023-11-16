import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DisListTile extends StatelessWidget {
  DisListTile(
      {super.key,
      required this.index,
      required this.shoeBrand,
      required this.price,
      required this.description,
      required this.size,
      required this.color});

  int index;
  final String shoeBrand;
  final double price;
  final String description;
  final int size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.wallet_giftcard_outlined,
                      color: Colors.amber),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Item no. $index, ",
                      style: const TextStyle(color: Colors.white, fontSize: 15))
                ],
              ),
              Text(shoeBrand),
              Text("$price"),
              Text(description),
              Text("$size"),
            ],
          ),
        ),
      ),
    );
  }
}

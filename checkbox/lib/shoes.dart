import 'package:flutter/material.dart';

class Shoes {
  final String shoeBrand;
  final double price;
  final String description;
  final int size;
  final Color color;

  Shoes(
      {required this.shoeBrand,
      required this.price,
      required this.description,
      required this.size,
      required this.color});
}

import 'package:checkbox/samples.dart';
import 'package:checkbox/tile.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: shoes.length,
          itemBuilder: (BuildContext context, int index) {
            return DisListTile(
                index: index,
                shoeBrand: shoes[index].shoeBrand,
                price: shoes[index].price,
                description: shoes[index].description,
                size: shoes[index].size,
                color: shoes[index].color);
          },
        ),
      ),
    );
  }
}

import 'package:checkbox/itempage.dart';
import 'package:checkbox/samples.dart';
import 'package:checkbox/tile.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({
    super.key,
  });

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
      body: SafeArea(
          child: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ItemViewPage(
                      index:
                          index, // this is just to know where in the index we are
                    );
                  },
                ));
              },

              //--- This is where the get passed in
              child: DisListTile(
                index: index,
                shoeBrand: shoes[index].shoeBrand,
                description: shoes[index].description,
                price: shoes[index].price,
                size: shoes[index].size,
                color: shoes[index].color,
              ));
        },
      )),
    );
  }
}

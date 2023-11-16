import 'package:checkbox/itempage.dart';
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
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ItemViewPage(
                      index: index,
                    );
                  },
                ));
              },
              child: DisListTile(index: index));
        },
      )),
    );
  }
}

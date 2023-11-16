import 'package:checkbox/discover.dart';
import 'package:checkbox/posts.dart';
import 'package:checkbox/stories.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //---- AppBar content ----//
      appBar: AppBar(
        title: const Text("Scrolers", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: const [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.heart_broken,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_outward_sharp,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
      //---- body ----//
      body:
          //------ Column Children-----//
          Column(
        //---Stories tab---//
        children: [
          SizedBox(
            height: 100,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StoriesWidget(index: index),
                );
              },
            ),
            //------//
          ),
          //----- Posts -----//
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PostsWidget(
                    index: index,
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Discover()),
              );
            },
          ),
          const Icon(
            Icons.video_collection_outlined,
            size: 35,
          ),
          const Icon(
            Icons.favorite_outline,
            size: 35,
          ),
          const Icon(
            Icons.person,
            size: 35,
          )
        ]),
      ),
    );
  }
}

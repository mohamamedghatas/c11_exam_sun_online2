import 'package:flutter/material.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return  const TabBar(
          tabs: [
            Tab(
        icon: ImageIcon(AssetImage('aseets/image/icon/Frame.png')),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.video_call),
              text: "Calls",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            )
          ],


      // body: const TabBarView(
      //   children: [
      //     Center(
      //       child: Text("Chats"),
      //     ),
      //     Center(
      //       child: Text("Calls"),
      //     ),
      //     Center(
      //       child: Text("Settings"),
      //     ),
      //   ],
      // ),
    );
  }
}
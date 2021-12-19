import "package:flutter/material.dart";

import '../widgets/chats.dart';
import '../widgets/side_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 25))
        ],
      ),
      drawer: Drawer(
        child: SideDrawer(),
      ),
      body: Chats(),
      floatingActionButton: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xff5B97E1),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
              size: 25,
            ),
          )),
    );
  }
}

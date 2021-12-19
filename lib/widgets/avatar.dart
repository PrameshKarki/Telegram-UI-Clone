import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String name;

  Avatar(this.name);

  @override
  Widget build(BuildContext context) {
    var avatar =
        name.split(" ").reduce((value, element) => value[0] + element[0]);
    print(avatar);

    return CircleAvatar(
      radius: 25,
      child: Text(
        avatar,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
      backgroundColor: Colors.orange,
    );
  }
}

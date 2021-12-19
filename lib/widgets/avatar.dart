import 'dart:math';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String name;

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
      backgroundColor:
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
    );
  }
}

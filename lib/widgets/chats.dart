import 'package:flutter/material.dart';

import '../models/Data.dart';
import '../widgets/chat_item.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: Data.chats.length,
        itemBuilder: (ctx, index) {
          return ChatItem(Data.chats[index]);
        },
        separatorBuilder: (context, index) => Divider(
          height: 2,
          color: Colors.black,
          indent: 70,
        ),
      ),
    );
  }
}

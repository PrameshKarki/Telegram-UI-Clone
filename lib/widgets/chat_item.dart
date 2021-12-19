import "package:flutter/material.dart";

import "../models/Chat.dart";
import '../widgets/avatar.dart';

class ChatItem extends StatelessWidget {
  final Chat userChat;

  ChatItem(this.userChat);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff222A37),
      child: ListTile(
        leading: userChat.avatarURL?.isEmpty as bool
            ? Avatar(userChat.name as String)
            : CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(userChat.avatarURL as String),
              ),
        title: Text(
          userChat.name as String,
          style: Theme.of(context).textTheme.headline1,
        ),
        subtitle: Text(
          userChat.message as String,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                userChat.isDelivered as bool
                    ? Icon(
                        Icons.done_all,
                        color: Color(0xff5B97E1),
                        size: 18,
                      )
                    : Icon(
                        Icons.done,
                        color: Color(0xff5B97E1),
                        size: 18,
                      ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  userChat.time as String,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            if (userChat.unseenMessageCount as int > 0)
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xff5B97E1)),
                child: Center(
                    child: FittedBox(
                  child: Text(
                    userChat.unseenMessageCount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
              )
          ],
        ),
      ),
    );
  }
}

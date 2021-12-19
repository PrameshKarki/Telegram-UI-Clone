import "package:flutter/material.dart";

import './Chat.dart';

class Data {
  static List<Chat> get chats {
    return [
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Pramesh Karki",
          message: "Lets make new flutter project!",
          time: "09:32",
          unseenMessageCount: 5,
          avatarURL: "https://avatars.githubusercontent.com/u/54496134?v=4",
          isDelivered: false),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Jeewan Ghimire",
          message: "Are you fine?",
          time: "09:32",
          unseenMessageCount: 0,
          avatarURL: "https://avatars.githubusercontent.com/u/54773057?v=4",
          isDelivered: false),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Laxaman Pokhrel",
          message: "Hello there!",
          time: "yesterday",
          unseenMessageCount: 0,
          avatarURL: "",
          isDelivered: true),
    ];
  }
}


//Prmaesh Karki
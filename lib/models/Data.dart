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
          time: "08:19",
          unseenMessageCount: 0,
          avatarURL: "https://avatars.githubusercontent.com/u/54773057?v=4",
          isDelivered: false),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Laxaman Pokhrel",
          message: "Hello there!",
          time: "5:15",
          unseenMessageCount: 0,
          avatarURL: "",
          isDelivered: true),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Alex Smith",
          message: "Welcome!",
          time: "1:15",
          unseenMessageCount: 1,
          avatarURL: "",
          isDelivered: true),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Maya R. Smith",
          message: "Call me emergenecy!",
          time: "yeterday",
          unseenMessageCount: 9,
          avatarURL: "",
          isDelivered: true),
      Chat(
          id: DateTime.now().toIso8601String(),
          name: "Neha Limbu",
          message: "Are you there!",
          time: "yeterday",
          unseenMessageCount: 100,
          avatarURL: "",
          isDelivered: true),
    ];
  }
}


//Prmaesh Karki
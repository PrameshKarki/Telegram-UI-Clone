import 'package:flutter/foundation.dart';

class Chat {
  String? id, name, message, avatarURL, time;
  int? unseenMessageCount;
  bool? isDelivered;

  Chat(
      {@required this.id,
      @required this.name,
      @required this.message,
      this.avatarURL = "",
      @required this.time,
      @required this.unseenMessageCount,
      @required this.isDelivered});
}

import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var safeArea = MediaQuery.of(context).padding.top;

    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          SizedBox(
            height: safeArea,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            height: 180,
            color: Color(0xff283143),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1428756331352129537/DCymMgZE_400x400.jpg"),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Pramesh Karki",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "+977 9842473580",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.light_mode,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 28,
                        ))
                  ],
                )
              ],
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 4),
            shrinkWrap: true,
            children: [
              ListTile(
                  leading:
                      Icon(Icons.people_outlined, color: Colors.grey, size: 28),
                  title: Text(
                    "New Group",
                    style: Theme.of(context).textTheme.bodyText2,
                  )),
              ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                  title: Text("Contacts",
                      style: Theme.of(context).textTheme.bodyText2)),
              ListTile(
                  leading:
                      Icon(Icons.call_outlined, color: Colors.grey, size: 28),
                  title: Text("Calls",
                      style: Theme.of(context).textTheme.bodyText2)),
              ListTile(
                  leading: Icon(
                    Icons.room_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  title: Text("People Nearby",
                      style: Theme.of(context).textTheme.bodyText2)),
              ListTile(
                  leading:
                      Icon(Icons.bookmark_border, size: 28, color: Colors.grey),
                  title: Text("Saved Messages",
                      style: Theme.of(context).textTheme.bodyText2)),
              ListTile(
                  leading: Icon(Icons.settings, size: 28, color: Colors.grey),
                  title: Text("Settings",
                      style: Theme.of(context).textTheme.bodyText2)),
            ],
          ),
          Divider(),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 4),
            children: [
              ListTile(
                leading: Icon(
                  Icons.person_add_outlined,
                  size: 28,
                  color: Colors.grey,
                ),
                title: Text(
                  "Invite Friends",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outlined,
                  size: 28,
                  color: Colors.grey,
                ),
                title: Text(
                  "Telegram Features",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

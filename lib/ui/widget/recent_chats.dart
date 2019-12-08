import 'package:flutter/material.dart';
import 'package:flutter_ui/model/message_model.dart';
import 'package:flutter_ui/ui/chat/chat_screen.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: chats[index].unread ? Color(0XFFFFEFFE) : Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chats[index].sender.imageURL),
                ),
                title: Text(
                  chats[index].sender.name,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  chats[index].text,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueGrey),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  chats[index].time,
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatPage(chats[index].sender),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

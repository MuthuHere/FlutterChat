import 'package:flutter/material.dart';
import 'package:flutter_ui/model/message_model.dart';
import 'package:flutter_ui/model/user_model.dart';

class ChatPage extends StatefulWidget {
  final User user;

  ChatPage(this.user);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            onPressed: () => {},
          )
        ],
      ),
      body: GestureDetector(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ListView.builder(
                    reverse: true,
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final chat = chats[index];
                      bool isMe = chat.sender.id == currentUser.id;
                      return _buildUI(chat, isMe);
                    }),
              ),
            ),
            _buildComposeMessage()
          ],
        ),
        onTap: () => FocusScope.of(context).unfocus(),
      ),
    );
  }

  Widget _buildUI(Message chat, bool isMe) {
    print(isMe);
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: isMe
          ? Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: <Widget>[
                  Text(
                    chat.text,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            )
          : Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  Text(
                    chat.text,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildComposeMessage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.photo,
              color: Colors.white,
            ),
            onPressed: () => {},
          ),
          Expanded(
            child: TextField(
              cursorColor: Colors.white,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) => {},
              decoration: InputDecoration(
                  hintText: 'Send a message', fillColor: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

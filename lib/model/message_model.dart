import 'package:flutter_ui/model/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User currentUser =
    User(id: 0, name: 'Muthu', imageURL: 'assets/images/muthu.jpeg');
final User arasu =
    User(id: 1, name: 'Arasu', imageURL: 'assets/images/arasu.jpeg');

final User jems =
    User(id: 2, name: 'Jems', imageURL: 'assets/images/jems.jpeg');

final User senthil =
    User(id: 3, name: 'Senthil', imageURL: 'assets/images/senthil.jpeg');

final User sugi =
    User(id: 4, name: 'Sugi', imageURL: 'assets/images/sugi.jpeg');

///fav contacts

List<User> favUsers = [currentUser, arasu, jems, senthil, sugi];

///example chat

List<Message> chats = [
  Message(
      sender: currentUser,
      time: '5.20 PM',
      text: 'hey are you free now?',
      isLiked: false,
      unread: true),
  Message(
      sender: arasu,
      time: '5.20 PM',
      text: 'hey are you free now?',
      isLiked: false,
      unread: true),
  Message(
      sender: jems,
      time: '6.00 PM',
      text: 'thats cool',
      isLiked: false,
      unread: false),
  Message(
      sender: currentUser,
      time: '5.20 PM',
      text: 'hey are you free now?',
      isLiked: false,
      unread: true),
  Message(
      sender: senthil,
      time: '6.23 PM',
      text: 'I am in call i will call you later...',
      isLiked: false,
      unread: false),
  Message(
      sender: sugi,
      time: '6.35 PM',
      text: 'Take care',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '5.20 PM',
      text: 'hey are you free now?',
      isLiked: false,
      unread: true),
  Message(
      sender: jems,
      time: '6.00 PM',
      text: 'thats cool',
      isLiked: false,
      unread: true),
  Message(
      sender: senthil,
      time: '6.23 PM',
      text: 'I am in call i will call you later...',
      isLiked: false,
      unread: true),
  Message(
      sender: sugi,
      time: '6.35 PM',
      text: 'Take care',
      isLiked: false,
      unread: true),
];

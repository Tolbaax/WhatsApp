import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatModel.dart';
import 'package:whatsapp/View/Widgets/CustomListTile.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<ChatModel>chats=
      [
        ChatModel(name: 'Tolba',subTitle: 'Typing..',time: '10:20 PM',isGroup: false),
        ChatModel(name: 'Hima',subTitle: 'Hey Hima',time: '9:16 PM',isGroup: false),
        ChatModel(name: 'Ayman',subTitle: 'Why?',time: '6:22 PM',isGroup: false),
        ChatModel(name: 'الهئ و المئ',subTitle: 'bye..',time: '1:13 PM',isGroup: true),
        ChatModel(name: 'Elghandour',subTitle: 'Typing..',time: '11:54 AM',isGroup: false),
        ChatModel(name: 'FCIS 3rd',subTitle: 'ok bro',time: '5:40 Am',isGroup: true),
        ChatModel(name: 'Ahmed',subTitle: 'LOL',time: '4:31 AM',isGroup: false),
      ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index){
      return CustomListTile(chatData: chats[index],);
    });
  }
}

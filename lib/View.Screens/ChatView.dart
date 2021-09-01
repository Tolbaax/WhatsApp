import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatModel.dart';
import 'package:whatsapp/Widgets/CustomListTile.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<ChatModel>chats=
  [
    ChatModel(name: 'Tolba',subTitle: 'It is ok',time: '4:31 AM',),
    ChatModel(name: 'Eng Elghandour',subTitle: 'Fsociety',time: '9:15 AM',),
    ChatModel(name: 'Nero',subTitle: 'Hello',time: '6:50 PM',),
    ChatModel(name: 'abo Salah',subTitle: 'but why?',time: '8:30 PM',),
    ChatModel(name: 'Ayman',subTitle: 'Hey Ayman',time: '1:12 AM',),
    ChatModel(name: 'Sowidan',subTitle: 'No problem!',time: '5:07 PM',),
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

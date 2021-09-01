import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatModel.dart';
import 'package:whatsapp/Widgets/CustomListTile.dart';

class CustomListTile extends StatelessWidget {
  ChatModel? chatData;
  CustomListTile({this.chatData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],radius: 30,
        ),
        title: Text(chatData!.name!),
        subtitle: Row(
          children: [
            Icon(Icons.done_all,color: Colors.blueAccent,),
            Text(chatData!.subTitle!),
          ],
        ),
        trailing: Text(chatData!.time!),
      ),
    );
  }
}

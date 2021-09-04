import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatModel.dart';
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
        title: Text(chatData!.name!,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
        subtitle: Row(
          children: [
            Icon(Icons.done_all,color: Colors.blueAccent,),
            SizedBox(width: 6,),
            Text(chatData!.subTitle!,style: TextStyle(fontSize: 15),),
          ],
        ),
        trailing: Text(chatData!.time!),
      ),
    );
  }
}

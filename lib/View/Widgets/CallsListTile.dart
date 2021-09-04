import 'package:flutter/material.dart';
import 'package:whatsapp/Models/CallsModel.dart';
class CallsListTile extends StatelessWidget {
  CallsModel?callsData;
  CallsListTile({this.callsData});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],radius: 30,
        ),
        title: Text(callsData!.name!,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
        subtitle: Row(
          children: [
            Icon(callsData!.iconData1!,color: callsData!.iconColor1!,size: 20,),
            SizedBox(width: 6,),
            Text(callsData!.subTitle!,style: TextStyle(fontSize: 15),)
          ],
        ),
        trailing: Icon(callsData!.iconData2!,color: callsData!.iconColor2!,size: 26,),
      ),
    );
  }
}

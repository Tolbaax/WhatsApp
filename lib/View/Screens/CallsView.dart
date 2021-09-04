import 'package:flutter/material.dart';
import 'package:whatsapp/Models/CallsModel.dart';
import 'package:whatsapp/View/Widgets/CallsListTile.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  List<CallsModel>calls=
      [
        CallsModel(name: 'Mohamed Tolba',subTitle: 'JustNow'
            ,iconData1: Icons.call_made,iconColor1: Colors.green
            ,iconData2: Icons.call,iconColor2: Colors.teal),
        CallsModel(name: 'Sowidan',subTitle: 'Yesterday, 5:31 PM'
            ,iconData1: Icons.call_received,iconColor1: Colors.red
            ,iconData2: Icons.video_call,iconColor2: Colors.teal),
        CallsModel(name: 'Ahmed Tolba',subTitle: 'August 29,6:01 PM'
            ,iconData1: Icons.call_made,iconColor1: Colors.green
            ,iconData2: Icons.call,iconColor2: Colors.teal),
        CallsModel(name: 'Abdallha',subTitle: 'August 20,7:13 PM'
            ,iconData1: Icons.call_received,iconColor1: Colors.red
            ,iconData2: Icons.call,iconColor2: Colors.teal),
        CallsModel(name: 'Nyera',subTitle: 'August 10,2:50 PM'
            ,iconData1: Icons.call_made,iconColor1: Colors.green
            ,iconData2: Icons.missed_video_call_rounded,iconColor2: Colors.teal),
        CallsModel(name: 'Ayman',subTitle: 'July 18,5:30'
            ,iconData1: Icons.call_made,iconColor1: Colors.green
            ,iconData2: Icons.call,iconColor2: Colors.teal),
        CallsModel(name: 'Emad',subTitle: 'June 18,5:30'
            ,iconData1: Icons.call_received,iconColor1: Colors.red
            ,iconData2: Icons.call,iconColor2: Colors.teal),
      ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context,index)
    {
      return CallsListTile(callsData: calls[index],);
    });
  }
}

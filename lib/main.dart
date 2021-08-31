import 'package:flutter/material.dart';

void main(){
  runApp(Whatsapp());
}
class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search),),
              PopupMenuButton(itemBuilder: (context)
              {
                return[
                  PopupMenuItem(child: Text('New group'),value: 'New group',),
                  PopupMenuItem(child: Text('New broadcast'),value: 'New broadcast',),
                  PopupMenuItem(child: Text('Linked devices'),value: 'Linked devices',),
                  PopupMenuItem(child: Text('Starred messages'),value: 'Starred messages',),
                  PopupMenuItem(child: Text('Settings'),value: 'Settings',),
                ];
              })
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
              Icon(Icons.camera_alt),
              Text('CHATS'),
              Text('STATUS'),
              Text('CALLS'),
            ],),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Icon(Icons.camera_alt,size: 70,),
              ),
              Container(
                child: Icon(Icons.chat,size: 70,),
              ),
              Container(
                child: Icon(Icons.accessibility,size: 70,),
              ),
              Container(
                child: Icon(Icons.call,size: 70,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/View.Screens/ChatView.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt),
            ChatView(),
            Icon(Icons.camera_alt),
            Icon(Icons.camera_alt),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/CallsView.dart';
import 'package:whatsapp/View/Screens/ChatView.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
static String id='HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 1;
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
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            labelPadding: EdgeInsetsDirectional.all(6),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,),
            tabs: [
              Container(
                  alignment: Alignment.topCenter,
                  child: Icon(Icons.camera_alt,)),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text('CHATS',)),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text('STATUS')),
              Container(
                  alignment: Alignment.center,
                  child: Text('CALLS',)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt,),
            ChatView(),
            Icon(Icons.camera_alt),
            CallsView(),
          ],
        ),
        floatingActionButton: _currentIndex==1?
        FloatingActionButton(onPressed: null,child: Icon(Icons.chat,color: Colors.white,),backgroundColor: Colors.teal,):null
      ),
    );
  }
}

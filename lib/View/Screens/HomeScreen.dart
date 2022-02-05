import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/CallsView.dart';
import 'package:whatsapp/View/Screens/ChatView.dart';
import 'package:whatsapp/View/Screens/StatusView.dart';
import 'package:easy_localization/easy_localization.dart';
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
          title: Text('WhatsApp',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),),
            PopupMenuButton(itemBuilder: (context)
            {
              return[
                PopupMenuItem(child: Text('ng').tr()),
                PopupMenuItem(child: Text('nb').tr()),
                PopupMenuItem(child: Text('ld').tr()),
                PopupMenuItem(child: Text('sm').tr()),
                PopupMenuItem(child: Text('s').tr()),
                PopupMenuItem(child: InkWell(
                    onTap: (){
                      context.setLocale(Locale('ar'));
                    },
                    child: Text('العربية'))),

                PopupMenuItem(child: InkWell(
                    onTap: ()
                    {
                      context.setLocale(Locale('en'));
                    },
                    child: Text('English'))),
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
            labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),
            tabs: [
              Container(
                  alignment: Alignment.topCenter,
                  child: Icon(Icons.camera_alt,)),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text('ch').tr()),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text('st').tr()),
              Container(
                  alignment: Alignment.center,
                  child: Text('ca',).tr()),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt,),
            ChatView(),
            StatusView(),
            CallsView(),
          ],
        ),
        floatingActionButton: _currentIndex==1?
        FloatingActionButton(onPressed: null,
          child: Icon(Icons.chat,color: Colors.white,),backgroundColor: Colors.teal,):null
      ),
    );
  }
}

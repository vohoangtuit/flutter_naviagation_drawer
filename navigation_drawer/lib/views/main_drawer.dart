import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_drawer/views/home.dart';
import 'package:navigation_drawer/views/notification.dart';
import 'package:navigation_drawer/views/profile.dart';
import 'package:navigation_drawer/views/setting.dart';

class DrawerScreen extends StatefulWidget {
  // This widget is the root of your application.
  String title;
  DrawerScreen(this.title);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
   Widget _widget;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widget = HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.deepOrangeAccent,Colors.deepOrange
                  ]
                )
              ),

                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage('https://avatars1.githubusercontent.com/u/16893157?s=460&u=aeb28d19ca88e78c507ea21a35dfc780f914abe3&v=4'))
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Vo Hoang Tu IT', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                      )
                    ],
                  ),
                ),

            ),
           // ListTile(title: Text('Title 1'),onTap: (){},),
            CustomListTitle(Icons.home,Colors.deepOrange,'Home',(){
              Navigator.of(context).pop();//  todo: close menu
              setState(() {
                _widget = HomeScreen();
              });
            }),
            CustomListTitle(Icons.person,Colors.blue,'Profile',(){
              Navigator.of(context).pop();//  todo: close menu
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ProfileScreen()));
            }),
            CustomListTitle(Icons.notifications,Colors.amberAccent,'Notification',(){
              Navigator.of(context).pop();//  todo: close menu
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NotificationScreen()));
            }),
            CustomListTitle(Icons.settings,Colors.grey,'Setting',(){
              Navigator.of(context).pop();//  todo: close menu
              setState(() {
                _widget = SettingScreen();
              });
            }),
            CustomListTitle(Icons.lock,Colors.blueGrey,'Log out',(){
              SystemNavigator.pop();// todo: finish App
            }),
          ],
        ),
      ) ,
      body: _widget,
    );
  }
}
class CustomListTitle extends StatelessWidget{
  IconData icon;
  Color iconColor;
  String text;
  Function onTap;
  CustomListTitle(this.icon,this.iconColor,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
     child: Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color: Colors.grey)),
       ),
       child: InkWell(
         splashColor: Colors.deepOrangeAccent,// color on click
         onTap: onTap,
         child: Container(
           height: 50,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(children: <Widget>[
                 Icon(icon, color: iconColor,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(text, style: TextStyle(color: Colors.black, fontSize: 16),),
                 ),
               ],),
               Icon(Icons.arrow_right)
             ],
           ),
         ),
       ),
     ),
   );
  }
}


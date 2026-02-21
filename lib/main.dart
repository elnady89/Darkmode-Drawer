import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),

      home: Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black
                ),

                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://wallpapers.com/images/hd/silhouette-dark-aesthetic-anime-pfp-ztai9so2b462a8mq.jpg'),
                ),

                  accountName: Text('youssef',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                  accountEmail: Text('youssef255@gmail.com',style: TextStyle(fontSize: 13)),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Home',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.mail_solid),
              title: Text('Email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.person),
              title: Text('Contact',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('Setting',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],
          ),
        ),
        appBar: AppBar(title: Text('Dark Mode App'),),
        body: Center(
          child: Text('Welcome',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              color: Colors.teal,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    );
  }
}

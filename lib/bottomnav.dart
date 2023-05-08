import 'package:class_practice/screens/home.dart';
import 'package:class_practice/screens/notification.dart';
import 'package:class_practice/screens/profile.dart';
import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  List<Widget>screens=[
    Home(),
    Profile(),
    Notificatons()


  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.login))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
          selectedItemColor: Colors.amber,
          onTap: (ind){
          setState(() {
            index=ind;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification'),
          ]),
      body: screens.elementAt(index)
    );
  }
}

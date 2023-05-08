import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var list=['hi','ny'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Container(
child: ListView(
  children: list.map((e) => Container(child: Text(e),)).toList(),
),
      )
        // ListView.builder(itemBuilder: (context,index));
        ],
      ),
    );
  }
}

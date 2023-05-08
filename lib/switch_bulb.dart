import 'package:flutter/material.dart';
class SwitchBulb extends StatefulWidget {
  const SwitchBulb({Key? key}) : super(key: key);

  @override
  State<SwitchBulb> createState() => _SwitchBulbState();
}

class _SwitchBulbState extends State<SwitchBulb> {
   bool switchButton=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Bulb"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(switchButton? Icons.lightbulb:Icons.lightbulb_outline,size:100,color: Colors.yellow,),
            switchButton? Text("Light is on"):Text("Light is off"),
            Switch(value: switchButton, onChanged: (val){
              switchButton=val;
              setState(() {

              });
            })

          ],
        ),
      ),
    );
  }
}

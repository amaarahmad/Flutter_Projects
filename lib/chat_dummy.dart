import 'package:flutter/material.dart';
class ChatDummy extends StatefulWidget {
  const ChatDummy({Key? key}) : super(key: key);

  @override
  State<ChatDummy> createState() => _ChatDummyState();
}

class _ChatDummyState extends State<ChatDummy> {
  List<String> msgList=[];
  TextEditingController msgController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Dummy'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: msgList.length,
              itemBuilder: (context,index){
            return Container(
              child: Text(msgList[index]),
            );
          })),
          Container(
            height: 60,
            child: Row(
              children: [
                Flexible(child: TextField(
                  controller: msgController,
                )),
                IconButton(onPressed: (){
                  msgList.add(msgController.text);
                  if(msgController.text.isNotEmpty){
                    setState(() {

                      msgController.clear();
                    });
                  }



                }, icon:Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}

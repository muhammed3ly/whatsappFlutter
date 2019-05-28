import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatmodel.dart';
class ChatScreen extends StatefulWidget{
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
    return new ListView.separated(
      itemCount: dummyData.length,

      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
        indent: 70.0,
      ),
      itemBuilder: (context, i) {
        bool last = dummyData.length == (i + 1);
        bool first = i == 0;
        return Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dummyData[i].time, style: TextStyle(color: Colors.grey, fontSize: 14.0),)
              ],
            ),
            subtitle: Container(
              padding: last? const EdgeInsets.only(top: 5.0, bottom: 100.0) : const EdgeInsets.only(top: 5.0),
              child: Text(dummyData[i].message, style: TextStyle(color: Colors.grey, fontSize: 15.0),),
            ),
          )
        ],
      );
  }
    );
  }
}
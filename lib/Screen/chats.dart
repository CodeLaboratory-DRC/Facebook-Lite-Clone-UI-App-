import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class ChatScreen extends StatelessWidget {

  final emoji = EmojiParser();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji.emojify(":smiley::smiley::smiley:"),
            
            style: TextStyle(fontSize: 35.0),
          ),
          SizedBox(height: 15.0,),
          Text(
            "FACEBOOK CHAT",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

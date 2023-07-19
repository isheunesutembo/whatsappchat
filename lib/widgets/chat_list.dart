import 'package:flutter/material.dart';
import 'package:whatsappchat/info.dart';
import 'package:whatsappchat/widgets/mymessagecard.dart';
import 'package:whatsappchat/widgets/sendermessagecard.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
           return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          return SenderMessageCard( message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
        });
  }
}

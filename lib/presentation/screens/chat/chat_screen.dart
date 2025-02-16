import 'package:chat_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Leading poner algo al costado del titulo
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/rick-y-morty-espanol/images/9/9c/Morty_smith_2.webp/revision/latest?cb=20230228215449&path-prefix=es'),
          ),
        ),
        title: Text('Prueba de app'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(  
                itemCount: 100,
                itemBuilder: (context, index) {
                  
                  return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();

              },)),
              //Caja de tgexto
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
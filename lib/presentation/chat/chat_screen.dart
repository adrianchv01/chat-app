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
      child: Column(
        children: [
          Expanded(child: Container(
            color: Colors.red,
          )),
          Text('Hola mundo'),
      
          Text('PRUEBA')
        ],
      ),
    );
  }
}
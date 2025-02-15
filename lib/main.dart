import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 2 ).theme(),
      home: ChatScreen()
    );
  }
}
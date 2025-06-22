import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterChat'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut(); //erases auth token
            },
            icon: Icon(Icons.exit_to_app),
            color: Colors.black,
          ),
        ],
      ),
      body: const Center(child: Text('Chat Screen')),
    );
  }
} //283

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(child: Text('Chat Screen')),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat_bubble), label: 'Ali'),
          NavigationDestination(icon: Icon(Icons.chat_bubble), label: 'Younes'),
        ],
      ),
    );
  }
}

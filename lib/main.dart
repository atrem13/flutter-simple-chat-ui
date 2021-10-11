import 'package:flutter/material.dart';

void main() => runApp(FriendlyChatApp());

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Frienly Chat',
        home: Scaffold(
            appBar: AppBar(
          title: ChatScreen(),
        )));
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildTextComposer(),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: InputDecoration.collapsed(hintText: 'Send a Message'),
      ),
    );
  }
}

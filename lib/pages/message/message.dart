import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ignore: avoid_unnecessary_containers
      body: SafeArea(
          child: Text("Message page")),
    );
  }
}

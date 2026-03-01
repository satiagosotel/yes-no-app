import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        suffixIcon: const Icon(Icons.send)
      ),
    );
  }
}
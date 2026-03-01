import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2Fv2%2FD4D03AQGuNkc-EhshIg%2Fprofile-displayphoto-shrink_200_200%2Fprofile-displayphoto-shrink_200_200%2F0%2F1725808193047%3Fe%3D2147483647%26v%3Dbeta%26t%3DLrXtq49POypDvNJUhjXv5BlFPH8ITGL0EcZVaBYxZEM&f=1&nofb=1&ipt=7cad9e81024757373f27fbdedd8393f022c549c82f251f909c916d8adb99a6cc'),
          ),
        ),
        title: const Text('Fabricio developer'),
      ),
      
      body:_ChatViewer()
    );
  }
}

class _ChatViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder:(context, index) {
                  
                  return index.isEven ? HisMessageBubble(): MyMessageBubble();
              }, )
            ),
            MessageBox()
          ],
        ),
      ),
    );
  }
}
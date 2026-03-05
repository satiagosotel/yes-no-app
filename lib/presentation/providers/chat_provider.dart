import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageQueue = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'A que te dedicas', fromWho: FromWho.me)
  ];
  final ScrollController chatScrollController =ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  Future<void> sendMessage(String text)async{
    if(text.isEmpty)return;
    messageQueue.add(Message(text: text, fromWho: FromWho.me));

    if(text.endsWith('?')){
      hesReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }


  Future<void> hesReply() async {
    final hesMessage = await getYesNoAnswer.getAnswer();

    messageQueue.add(hesMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom()async{

    await Future.delayed(const Duration(milliseconds: 300));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds:300 ), 
      curve: Curves.easeOut
      );
  }

  
}
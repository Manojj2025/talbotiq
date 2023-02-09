import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/chatdetails_view.dart';

class ChatdetailController extends GetxController {
  //TODO: Implement JobsController
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Good morning,How are you?", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hello,I’m good, Thanks", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

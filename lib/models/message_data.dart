import 'package:flutter/cupertino.dart';

class MessageData {
  final String senderName;
  final String message;
  final DateTime messageDate;
  final String dateMessage;
  final String profilePicture;

  MessageData({
    required this.senderName,
    required this.message,
    required this.dateMessage,
    required this.profilePicture,
    required this.messageDate,
  });
}

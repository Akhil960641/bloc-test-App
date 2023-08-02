// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../widgets/app_text.dart';
// import 'package:laurel_mercury/Models/app_text.dart';

enum MessageType { error, success, warning }

void snackBar(BuildContext context,
    {required String message, MessageType type = MessageType.error}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: _getColor(type),
      content: AppText(
          fontSize: 12,
          text: message.toUpperCase(),
          color: Colors.white,
          maxLines: 2)));
}

Color _getColor(MessageType type) {
  if (type == MessageType.error) {
    return Colors.grey[600]!;
  } else if (type == MessageType.success) {
    return Colors.green[600]!;
  }
  return Colors.black;
}

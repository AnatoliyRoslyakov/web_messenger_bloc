import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/chat_model.dart';

class ChatRepository {
  static Future<ChatModel> loadChatData() async {
    try {
      String jsonString = await rootBundle.loadString('json/chatDate.json');
      Map<String, dynamic> jsonData = json.decode(jsonString);
      return ChatModel.fromJson(jsonData);
    } catch (e) {
      debugPrint('Ошибка при загрузке или парсинге JSON файла: $e');
      return ChatModel(userInfo: []);
    }
  }

  static Future<void> saveMessagesLocally(int index) async {
    final chatModel = await ChatRepository.loadChatData();

    List<Map<String, dynamic>> jsonMessages = chatModel
        .userInfo[index].listMessage.last.message
        .map((message) => message.toJson())
        .toList();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('message', jsonEncode(jsonMessages));
  }
}

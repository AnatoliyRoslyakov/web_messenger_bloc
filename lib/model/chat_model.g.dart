// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      userInfo: (json['userInfo'] as List<dynamic>)
          .map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'userInfo': instance.userInfo,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      imagePhotoUrl: json['imagePhotoUrl'] as String,
      imageMessagerUrl: json['imageMessagerUrl'] as String,
      lastMessage: json['lastMessage'] as String,
      timeLastMessage: json['timeLastMessage'] as String,
      listMessage: (json['listMessage'] as List<dynamic>)
          .map((e) => ListMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagePhotoUrl': instance.imagePhotoUrl,
      'imageMessagerUrl': instance.imageMessagerUrl,
      'lastMessage': instance.lastMessage,
      'timeLastMessage': instance.timeLastMessage,
      'listMessage': instance.listMessage,
    };

ListMessage _$ListMessageFromJson(Map<String, dynamic> json) => ListMessage(
      type: json['type'] as String,
      message: (json['message'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMessageToJson(ListMessage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      message: json['message'] as String,
      timeMessage: json['timeMessage'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'message': instance.message,
      'timeMessage': instance.timeMessage,
    };

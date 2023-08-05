import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@JsonSerializable()
class ChatModel {
  final List<UserInfo> userInfo;

  ChatModel({required this.userInfo});

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatModelToJson(this);

  ChatModel addMessageToUserInfo(int userInfoId, Message newMessage, String type) {
    List<UserInfo> updatedUserInfo = userInfo.map((info) {
      if (info.id == userInfoId) {
        List<ListMessage> updatedListMessage = List.from(info.listMessage);
        updatedListMessage
            .add(ListMessage(type: type, message: [newMessage]));
        return info.copyWith(listMessage: updatedListMessage);
      } else {
        return info;
      }
    }).toList();

    return ChatModel(userInfo: updatedUserInfo);
  }
}

@JsonSerializable()
class UserInfo {
  final int id;
  final String name;
  final String imagePhotoUrl;
  final String imageMessagerUrl;
  final String lastMessage;
  final String timeLastMessage; // DateTime
  final List<ListMessage> listMessage;

  UserInfo(
      {required this.id,
      required this.name,
      required this.imagePhotoUrl,
      required this.imageMessagerUrl,
      required this.lastMessage,
      required this.timeLastMessage,
      required this.listMessage});

  UserInfo copyWith({
    int? id,
    String? name,
    String? imagePhotoUrl,
    String? imageMessagerUrl,
    String? lastMessage,
    String? timeLastMessage,
    List<ListMessage>? listMessage,
  }) {
    return UserInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      imagePhotoUrl: imagePhotoUrl ?? this.imagePhotoUrl,
      imageMessagerUrl: imageMessagerUrl ?? this.imageMessagerUrl,
      lastMessage: lastMessage ?? this.lastMessage,
      timeLastMessage: timeLastMessage ?? this.timeLastMessage,
      listMessage: listMessage ?? this.listMessage,
    );
  }

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}

@JsonSerializable()
class ListMessage {
  final String type; // входящее или исходящее
  final List<Message> message;

  ListMessage({required this.type, required this.message});

  factory ListMessage.fromJson(Map<String, dynamic> json) =>
      _$ListMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ListMessageToJson(this);
}

@JsonSerializable()
class Message {
  final String message;
  final String timeMessage;

  Message({required this.message, required this.timeMessage});

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

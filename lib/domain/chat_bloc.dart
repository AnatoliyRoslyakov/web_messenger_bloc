// ignore: depend_on_referenced_packages
import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_messenger_bloc/domain/random_words.dart';
import 'package:web_messenger_bloc/service/repository.dart';

import '../model/chat_model.dart';

part 'chat_bloc.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const ChatEvent._();

  const factory ChatEvent.init() = InitChatEvent;
  const factory ChatEvent.addMessagePeriod() = AddMessagePeriodChatEvent;
  const factory ChatEvent.indexChat(int index) = IndexChatChatEvent;
  const factory ChatEvent.addMessage(
      Message message, int index, ChatModel chatModel) = AddMessageChatEvent;
}

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.initial(
    ChatModel chatModel,
    int index,
  ) = InitialChatState;
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.initial(ChatModel(userInfo: []), -1)) {
    on<InitChatEvent>(_init);
    on<IndexChatChatEvent>(_indexChat);
    on<AddMessageChatEvent>(_addMessage);
    on<AddMessagePeriodChatEvent>(_addMessagePeriod);
  }
  Timer? timer;

  Future<void> _init(InitChatEvent event, Emitter<ChatState> emit) async {
    final chatModel = await ChatRepository.loadChatData();
    emit(state.copyWith(chatModel: chatModel));
    return;
  }

  Future<void> _addMessagePeriod(
      AddMessagePeriodChatEvent event, Emitter<ChatState> emit) async {
    int index = Random().nextInt(state.chatModel.userInfo.length);
    var randomWords = RandomWords();
    String randomMessage = randomWords.getRandomWord();
    List<String> type = ['исходящее', 'входящее'];
    ChatModel updatedModel = state.chatModel.addMessageToUserInfo(
        index,
        Message(
            message: randomMessage,
            timeMessage: DateTime.now().toIso8601String()),
        type[Random().nextInt(2)]);
    emit(state.copyWith(chatModel: updatedModel));
  }

  bool isTimerRunning = false;

  void startTimer() async {
    if (!isTimerRunning) {
      isTimerRunning = true;
      timer = await Timer.periodic(const Duration(seconds: 3), (_) {
        add(const ChatEvent.addMessagePeriod());
      });
    }
  }

  Future<void> _indexChat(
      IndexChatChatEvent event, Emitter<ChatState> emit) async {
    emit(state.copyWith(index: event.index));
  }

  Future<void> _addMessage(
      AddMessageChatEvent event, Emitter<ChatState> emit) async {
    ChatModel updatedModel = event.chatModel
        .addMessageToUserInfo(event.index, event.message, 'исходящие');

    emit(state.copyWith(chatModel: updatedModel));
  }
}

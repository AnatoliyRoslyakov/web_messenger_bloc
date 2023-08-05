// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addMessagePeriod,
    required TResult Function(int index) indexChat,
    required TResult Function(Message message, int index, ChatModel chatModel)
        addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addMessagePeriod,
    TResult? Function(int index)? indexChat,
    TResult? Function(Message message, int index, ChatModel chatModel)?
        addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addMessagePeriod,
    TResult Function(int index)? indexChat,
    TResult Function(Message message, int index, ChatModel chatModel)?
        addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(AddMessagePeriodChatEvent value) addMessagePeriod,
    required TResult Function(IndexChatChatEvent value) indexChat,
    required TResult Function(AddMessageChatEvent value) addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult? Function(IndexChatChatEvent value)? indexChat,
    TResult? Function(AddMessageChatEvent value)? addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult Function(IndexChatChatEvent value)? indexChat,
    TResult Function(AddMessageChatEvent value)? addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitChatEventCopyWith<$Res> {
  factory _$$InitChatEventCopyWith(
          _$InitChatEvent value, $Res Function(_$InitChatEvent) then) =
      __$$InitChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitChatEvent>
    implements _$$InitChatEventCopyWith<$Res> {
  __$$InitChatEventCopyWithImpl(
      _$InitChatEvent _value, $Res Function(_$InitChatEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitChatEvent extends InitChatEvent {
  const _$InitChatEvent() : super._();

  @override
  String toString() {
    return 'ChatEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitChatEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addMessagePeriod,
    required TResult Function(int index) indexChat,
    required TResult Function(Message message, int index, ChatModel chatModel)
        addMessage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addMessagePeriod,
    TResult? Function(int index)? indexChat,
    TResult? Function(Message message, int index, ChatModel chatModel)?
        addMessage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addMessagePeriod,
    TResult Function(int index)? indexChat,
    TResult Function(Message message, int index, ChatModel chatModel)?
        addMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(AddMessagePeriodChatEvent value) addMessagePeriod,
    required TResult Function(IndexChatChatEvent value) indexChat,
    required TResult Function(AddMessageChatEvent value) addMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult? Function(IndexChatChatEvent value)? indexChat,
    TResult? Function(AddMessageChatEvent value)? addMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult Function(IndexChatChatEvent value)? indexChat,
    TResult Function(AddMessageChatEvent value)? addMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitChatEvent extends ChatEvent {
  const factory InitChatEvent() = _$InitChatEvent;
  const InitChatEvent._() : super._();
}

/// @nodoc
abstract class _$$AddMessagePeriodChatEventCopyWith<$Res> {
  factory _$$AddMessagePeriodChatEventCopyWith(
          _$AddMessagePeriodChatEvent value,
          $Res Function(_$AddMessagePeriodChatEvent) then) =
      __$$AddMessagePeriodChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddMessagePeriodChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddMessagePeriodChatEvent>
    implements _$$AddMessagePeriodChatEventCopyWith<$Res> {
  __$$AddMessagePeriodChatEventCopyWithImpl(_$AddMessagePeriodChatEvent _value,
      $Res Function(_$AddMessagePeriodChatEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddMessagePeriodChatEvent extends AddMessagePeriodChatEvent {
  const _$AddMessagePeriodChatEvent() : super._();

  @override
  String toString() {
    return 'ChatEvent.addMessagePeriod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessagePeriodChatEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addMessagePeriod,
    required TResult Function(int index) indexChat,
    required TResult Function(Message message, int index, ChatModel chatModel)
        addMessage,
  }) {
    return addMessagePeriod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addMessagePeriod,
    TResult? Function(int index)? indexChat,
    TResult? Function(Message message, int index, ChatModel chatModel)?
        addMessage,
  }) {
    return addMessagePeriod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addMessagePeriod,
    TResult Function(int index)? indexChat,
    TResult Function(Message message, int index, ChatModel chatModel)?
        addMessage,
    required TResult orElse(),
  }) {
    if (addMessagePeriod != null) {
      return addMessagePeriod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(AddMessagePeriodChatEvent value) addMessagePeriod,
    required TResult Function(IndexChatChatEvent value) indexChat,
    required TResult Function(AddMessageChatEvent value) addMessage,
  }) {
    return addMessagePeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult? Function(IndexChatChatEvent value)? indexChat,
    TResult? Function(AddMessageChatEvent value)? addMessage,
  }) {
    return addMessagePeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult Function(IndexChatChatEvent value)? indexChat,
    TResult Function(AddMessageChatEvent value)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessagePeriod != null) {
      return addMessagePeriod(this);
    }
    return orElse();
  }
}

abstract class AddMessagePeriodChatEvent extends ChatEvent {
  const factory AddMessagePeriodChatEvent() = _$AddMessagePeriodChatEvent;
  const AddMessagePeriodChatEvent._() : super._();
}

/// @nodoc
abstract class _$$IndexChatChatEventCopyWith<$Res> {
  factory _$$IndexChatChatEventCopyWith(_$IndexChatChatEvent value,
          $Res Function(_$IndexChatChatEvent) then) =
      __$$IndexChatChatEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IndexChatChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$IndexChatChatEvent>
    implements _$$IndexChatChatEventCopyWith<$Res> {
  __$$IndexChatChatEventCopyWithImpl(
      _$IndexChatChatEvent _value, $Res Function(_$IndexChatChatEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$IndexChatChatEvent(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IndexChatChatEvent extends IndexChatChatEvent {
  const _$IndexChatChatEvent(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'ChatEvent.indexChat(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexChatChatEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexChatChatEventCopyWith<_$IndexChatChatEvent> get copyWith =>
      __$$IndexChatChatEventCopyWithImpl<_$IndexChatChatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addMessagePeriod,
    required TResult Function(int index) indexChat,
    required TResult Function(Message message, int index, ChatModel chatModel)
        addMessage,
  }) {
    return indexChat(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addMessagePeriod,
    TResult? Function(int index)? indexChat,
    TResult? Function(Message message, int index, ChatModel chatModel)?
        addMessage,
  }) {
    return indexChat?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addMessagePeriod,
    TResult Function(int index)? indexChat,
    TResult Function(Message message, int index, ChatModel chatModel)?
        addMessage,
    required TResult orElse(),
  }) {
    if (indexChat != null) {
      return indexChat(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(AddMessagePeriodChatEvent value) addMessagePeriod,
    required TResult Function(IndexChatChatEvent value) indexChat,
    required TResult Function(AddMessageChatEvent value) addMessage,
  }) {
    return indexChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult? Function(IndexChatChatEvent value)? indexChat,
    TResult? Function(AddMessageChatEvent value)? addMessage,
  }) {
    return indexChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult Function(IndexChatChatEvent value)? indexChat,
    TResult Function(AddMessageChatEvent value)? addMessage,
    required TResult orElse(),
  }) {
    if (indexChat != null) {
      return indexChat(this);
    }
    return orElse();
  }
}

abstract class IndexChatChatEvent extends ChatEvent {
  const factory IndexChatChatEvent(final int index) = _$IndexChatChatEvent;
  const IndexChatChatEvent._() : super._();

  int get index;
  @JsonKey(ignore: true)
  _$$IndexChatChatEventCopyWith<_$IndexChatChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMessageChatEventCopyWith<$Res> {
  factory _$$AddMessageChatEventCopyWith(_$AddMessageChatEvent value,
          $Res Function(_$AddMessageChatEvent) then) =
      __$$AddMessageChatEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message, int index, ChatModel chatModel});
}

/// @nodoc
class __$$AddMessageChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddMessageChatEvent>
    implements _$$AddMessageChatEventCopyWith<$Res> {
  __$$AddMessageChatEventCopyWithImpl(
      _$AddMessageChatEvent _value, $Res Function(_$AddMessageChatEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? index = null,
    Object? chatModel = null,
  }) {
    return _then(_$AddMessageChatEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == chatModel
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel,
    ));
  }
}

/// @nodoc

class _$AddMessageChatEvent extends AddMessageChatEvent {
  const _$AddMessageChatEvent(this.message, this.index, this.chatModel)
      : super._();

  @override
  final Message message;
  @override
  final int index;
  @override
  final ChatModel chatModel;

  @override
  String toString() {
    return 'ChatEvent.addMessage(message: $message, index: $index, chatModel: $chatModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessageChatEvent &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.chatModel, chatModel) ||
                other.chatModel == chatModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, index, chatModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessageChatEventCopyWith<_$AddMessageChatEvent> get copyWith =>
      __$$AddMessageChatEventCopyWithImpl<_$AddMessageChatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addMessagePeriod,
    required TResult Function(int index) indexChat,
    required TResult Function(Message message, int index, ChatModel chatModel)
        addMessage,
  }) {
    return addMessage(message, index, chatModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addMessagePeriod,
    TResult? Function(int index)? indexChat,
    TResult? Function(Message message, int index, ChatModel chatModel)?
        addMessage,
  }) {
    return addMessage?.call(message, index, chatModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addMessagePeriod,
    TResult Function(int index)? indexChat,
    TResult Function(Message message, int index, ChatModel chatModel)?
        addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message, index, chatModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(AddMessagePeriodChatEvent value) addMessagePeriod,
    required TResult Function(IndexChatChatEvent value) indexChat,
    required TResult Function(AddMessageChatEvent value) addMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult? Function(IndexChatChatEvent value)? indexChat,
    TResult? Function(AddMessageChatEvent value)? addMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(AddMessagePeriodChatEvent value)? addMessagePeriod,
    TResult Function(IndexChatChatEvent value)? indexChat,
    TResult Function(AddMessageChatEvent value)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class AddMessageChatEvent extends ChatEvent {
  const factory AddMessageChatEvent(
          final Message message, final int index, final ChatModel chatModel) =
      _$AddMessageChatEvent;
  const AddMessageChatEvent._() : super._();

  Message get message;
  int get index;
  ChatModel get chatModel;
  @JsonKey(ignore: true)
  _$$AddMessageChatEventCopyWith<_$AddMessageChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  ChatModel get chatModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chatModel, int index) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chatModel, int index)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chatModel, int index)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialChatState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatModel chatModel, int index});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatModel = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      chatModel: null == chatModel
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialChatStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$InitialChatStateCopyWith(
          _$InitialChatState value, $Res Function(_$InitialChatState) then) =
      __$$InitialChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModel chatModel, int index});
}

/// @nodoc
class __$$InitialChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialChatState>
    implements _$$InitialChatStateCopyWith<$Res> {
  __$$InitialChatStateCopyWithImpl(
      _$InitialChatState _value, $Res Function(_$InitialChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatModel = null,
    Object? index = null,
  }) {
    return _then(_$InitialChatState(
      null == chatModel
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialChatState extends InitialChatState {
  const _$InitialChatState(this.chatModel, this.index) : super._();

  @override
  final ChatModel chatModel;
  @override
  final int index;

  @override
  String toString() {
    return 'ChatState.initial(chatModel: $chatModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialChatState &&
            (identical(other.chatModel, chatModel) ||
                other.chatModel == chatModel) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatModel, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialChatStateCopyWith<_$InitialChatState> get copyWith =>
      __$$InitialChatStateCopyWithImpl<_$InitialChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel chatModel, int index) initial,
  }) {
    return initial(chatModel, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModel chatModel, int index)? initial,
  }) {
    return initial?.call(chatModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel chatModel, int index)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(chatModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialChatState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialChatState extends ChatState {
  const factory InitialChatState(final ChatModel chatModel, final int index) =
      _$InitialChatState;
  const InitialChatState._() : super._();

  @override
  ChatModel get chatModel;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$InitialChatStateCopyWith<_$InitialChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

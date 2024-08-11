// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, User selectedUser});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? selectedUser = null,
  }) {
    return _then(_$GetMessagesImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl(this.conversationId, this.selectedUser);

  @override
  final String conversationId;
  @override
  final User selectedUser;

  @override
  String toString() {
    return 'ConversationEvent.getMessages(conversationId: $conversationId, selectedUser: $selectedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, selectedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) {
    return getMessages(conversationId, selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) {
    return getMessages?.call(conversationId, selectedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(conversationId, selectedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ConversationEvent {
  const factory _GetMessages(
      final String conversationId, final User selectedUser) = _$GetMessagesImpl;

  String get conversationId;
  User get selectedUser;
  @JsonKey(ignore: true)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SendMessageImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ConversationEvent.sendMessage(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) {
    return sendMessage(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) {
    return sendMessage?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ConversationEvent {
  const factory _SendMessage(final BuildContext context) = _$SendMessageImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageBubbleModel> messagesBubbles});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesBubbles = null,
  }) {
    return _then(_$MessageReceivedImpl(
      null == messagesBubbles
          ? _value._messagesBubbles
          : messagesBubbles // ignore: cast_nullable_to_non_nullable
              as List<MessageBubbleModel>,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl(final List<MessageBubbleModel> messagesBubbles)
      : _messagesBubbles = messagesBubbles;

  final List<MessageBubbleModel> _messagesBubbles;
  @override
  List<MessageBubbleModel> get messagesBubbles {
    if (_messagesBubbles is EqualUnmodifiableListView) return _messagesBubbles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesBubbles);
  }

  @override
  String toString() {
    return 'ConversationEvent.messagesReceived(messagesBubbles: $messagesBubbles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            const DeepCollectionEquality()
                .equals(other._messagesBubbles, _messagesBubbles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagesBubbles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) {
    return messagesReceived(messagesBubbles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) {
    return messagesReceived?.call(messagesBubbles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived(messagesBubbles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) {
    return messagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) {
    return messagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ConversationEvent {
  const factory _MessageReceived(
      final List<MessageBubbleModel> messagesBubbles) = _$MessageReceivedImpl;

  List<MessageBubbleModel> get messagesBubbles;
  @JsonKey(ignore: true)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendErrorEventImplCopyWith<$Res> {
  factory _$$SendErrorEventImplCopyWith(_$SendErrorEventImpl value,
          $Res Function(_$SendErrorEventImpl) then) =
      __$$SendErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SendErrorEventImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$SendErrorEventImpl>
    implements _$$SendErrorEventImplCopyWith<$Res> {
  __$$SendErrorEventImplCopyWithImpl(
      _$SendErrorEventImpl _value, $Res Function(_$SendErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SendErrorEventImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SendErrorEventImpl implements _SendErrorEvent {
  const _$SendErrorEventImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ConversationEvent.sendErrorEvent(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendErrorEventImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendErrorEventImplCopyWith<_$SendErrorEventImpl> get copyWith =>
      __$$SendErrorEventImplCopyWithImpl<_$SendErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) {
    return sendErrorEvent(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) {
    return sendErrorEvent?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) {
    if (sendErrorEvent != null) {
      return sendErrorEvent(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) {
    return sendErrorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) {
    return sendErrorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) {
    if (sendErrorEvent != null) {
      return sendErrorEvent(this);
    }
    return orElse();
  }
}

abstract class _SendErrorEvent implements ConversationEvent {
  const factory _SendErrorEvent(final ApiErrorModel apiErrorModel) =
      _$SendErrorEventImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$SendErrorEventImplCopyWith<_$SendErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefetchMessagesImplCopyWith<$Res> {
  factory _$$RefetchMessagesImplCopyWith(_$RefetchMessagesImpl value,
          $Res Function(_$RefetchMessagesImpl) then) =
      __$$RefetchMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefetchMessagesImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$RefetchMessagesImpl>
    implements _$$RefetchMessagesImplCopyWith<$Res> {
  __$$RefetchMessagesImplCopyWithImpl(
      _$RefetchMessagesImpl _value, $Res Function(_$RefetchMessagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefetchMessagesImpl implements _RefetchMessages {
  const _$RefetchMessagesImpl();

  @override
  String toString() {
    return 'ConversationEvent.refetchMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefetchMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId, User selectedUser)
        getMessages,
    required TResult Function(BuildContext context) sendMessage,
    required TResult Function(List<MessageBubbleModel> messagesBubbles)
        messagesReceived,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
    required TResult Function() refetchMessages,
  }) {
    return refetchMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId, User selectedUser)? getMessages,
    TResult? Function(BuildContext context)? sendMessage,
    TResult? Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult? Function()? refetchMessages,
  }) {
    return refetchMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId, User selectedUser)? getMessages,
    TResult Function(BuildContext context)? sendMessage,
    TResult Function(List<MessageBubbleModel> messagesBubbles)?
        messagesReceived,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    TResult Function()? refetchMessages,
    required TResult orElse(),
  }) {
    if (refetchMessages != null) {
      return refetchMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MessageReceived value) messagesReceived,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
    required TResult Function(_RefetchMessages value) refetchMessages,
  }) {
    return refetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MessageReceived value)? messagesReceived,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
    TResult? Function(_RefetchMessages value)? refetchMessages,
  }) {
    return refetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MessageReceived value)? messagesReceived,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    TResult Function(_RefetchMessages value)? refetchMessages,
    required TResult orElse(),
  }) {
    if (refetchMessages != null) {
      return refetchMessages(this);
    }
    return orElse();
  }
}

abstract class _RefetchMessages implements ConversationEvent {
  const factory _RefetchMessages() = _$RefetchMessagesImpl;
}

/// @nodoc
mixin _$ConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageBubbleModel> messages) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(MessageBubbleModel message) newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageBubbleModel> messages)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(MessageBubbleModel message)? newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageBubbleModel> messages)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(MessageBubbleModel message)? newMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NewMessage value) newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NewMessage value)? newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NewMessage value)? newMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ConversationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageBubbleModel> messages) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(MessageBubbleModel message) newMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageBubbleModel> messages)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(MessageBubbleModel message)? newMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageBubbleModel> messages)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(MessageBubbleModel message)? newMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NewMessage value) newMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NewMessage value)? newMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NewMessage value)? newMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageBubbleModel> messages});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$LoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageBubbleModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<MessageBubbleModel> messages)
      : _messages = messages;

  final List<MessageBubbleModel> _messages;
  @override
  List<MessageBubbleModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ConversationState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageBubbleModel> messages) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(MessageBubbleModel message) newMessage,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageBubbleModel> messages)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(MessageBubbleModel message)? newMessage,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageBubbleModel> messages)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(MessageBubbleModel message)? newMessage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NewMessage value) newMessage,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NewMessage value)? newMessage,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NewMessage value)? newMessage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ConversationState {
  const factory _Loaded(final List<MessageBubbleModel> messages) = _$LoadedImpl;

  List<MessageBubbleModel> get messages;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ConversationState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageBubbleModel> messages) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(MessageBubbleModel message) newMessage,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageBubbleModel> messages)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(MessageBubbleModel message)? newMessage,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageBubbleModel> messages)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(MessageBubbleModel message)? newMessage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NewMessage value) newMessage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NewMessage value)? newMessage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NewMessage value)? newMessage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ConversationState {
  const factory Error(final ApiErrorModel apiErrorModel) = _$ErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewMessageImplCopyWith<$Res> {
  factory _$$NewMessageImplCopyWith(
          _$NewMessageImpl value, $Res Function(_$NewMessageImpl) then) =
      __$$NewMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageBubbleModel message});
}

/// @nodoc
class __$$NewMessageImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$NewMessageImpl>
    implements _$$NewMessageImplCopyWith<$Res> {
  __$$NewMessageImplCopyWithImpl(
      _$NewMessageImpl _value, $Res Function(_$NewMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageBubbleModel,
    ));
  }
}

/// @nodoc

class _$NewMessageImpl implements NewMessage {
  const _$NewMessageImpl(this.message);

  @override
  final MessageBubbleModel message;

  @override
  String toString() {
    return 'ConversationState.newMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageImplCopyWith<_$NewMessageImpl> get copyWith =>
      __$$NewMessageImplCopyWithImpl<_$NewMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MessageBubbleModel> messages) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(MessageBubbleModel message) newMessage,
  }) {
    return newMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MessageBubbleModel> messages)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(MessageBubbleModel message)? newMessage,
  }) {
    return newMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MessageBubbleModel> messages)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(MessageBubbleModel message)? newMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NewMessage value) newMessage,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NewMessage value)? newMessage,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NewMessage value)? newMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }
}

abstract class NewMessage implements ConversationState {
  const factory NewMessage(final MessageBubbleModel message) = _$NewMessageImpl;

  MessageBubbleModel get message;
  @JsonKey(ignore: true)
  _$$NewMessageImplCopyWith<_$NewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

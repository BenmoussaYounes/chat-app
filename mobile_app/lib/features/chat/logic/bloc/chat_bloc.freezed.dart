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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
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
abstract class _$$OnNewMessagesReceivedImplCopyWith<$Res> {
  factory _$$OnNewMessagesReceivedImplCopyWith(
          _$OnNewMessagesReceivedImpl value,
          $Res Function(_$OnNewMessagesReceivedImpl) then) =
      __$$OnNewMessagesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, List<ConversationModel> conversations});
}

/// @nodoc
class __$$OnNewMessagesReceivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OnNewMessagesReceivedImpl>
    implements _$$OnNewMessagesReceivedImplCopyWith<$Res> {
  __$$OnNewMessagesReceivedImplCopyWithImpl(_$OnNewMessagesReceivedImpl _value,
      $Res Function(_$OnNewMessagesReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? conversations = null,
  }) {
    return _then(_$OnNewMessagesReceivedImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationModel>,
    ));
  }
}

/// @nodoc

class _$OnNewMessagesReceivedImpl implements _OnNewMessagesReceived {
  const _$OnNewMessagesReceivedImpl(
      this.context, final List<ConversationModel> conversations)
      : _conversations = conversations;

  @override
  final BuildContext context;
  final List<ConversationModel> _conversations;
  @override
  List<ConversationModel> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatEvent.onNewMessagesReceived(context: $context, conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNewMessagesReceivedImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context,
      const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNewMessagesReceivedImplCopyWith<_$OnNewMessagesReceivedImpl>
      get copyWith => __$$OnNewMessagesReceivedImplCopyWithImpl<
          _$OnNewMessagesReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return onNewMessagesReceived(context, conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return onNewMessagesReceived?.call(context, conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (onNewMessagesReceived != null) {
      return onNewMessagesReceived(context, conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return onNewMessagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return onNewMessagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (onNewMessagesReceived != null) {
      return onNewMessagesReceived(this);
    }
    return orElse();
  }
}

abstract class _OnNewMessagesReceived implements ChatEvent {
  const factory _OnNewMessagesReceived(final BuildContext context,
          final List<ConversationModel> conversations) =
      _$OnNewMessagesReceivedImpl;

  BuildContext get context;
  List<ConversationModel> get conversations;
  @JsonKey(ignore: true)
  _$$OnNewMessagesReceivedImplCopyWith<_$OnNewMessagesReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetConversationsImplCopyWith<$Res> {
  factory _$$GetConversationsImplCopyWith(_$GetConversationsImpl value,
          $Res Function(_$GetConversationsImpl) then) =
      __$$GetConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetConversationsImpl>
    implements _$$GetConversationsImplCopyWith<$Res> {
  __$$GetConversationsImplCopyWithImpl(_$GetConversationsImpl _value,
      $Res Function(_$GetConversationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetConversationsImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetConversationsImpl implements _GetConversations {
  const _$GetConversationsImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.getConversations(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationsImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetConversationsImplCopyWith<_$GetConversationsImpl> get copyWith =>
      __$$GetConversationsImplCopyWithImpl<_$GetConversationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return getConversations(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return getConversations?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (getConversations != null) {
      return getConversations(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return getConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return getConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (getConversations != null) {
      return getConversations(this);
    }
    return orElse();
  }
}

abstract class _GetConversations implements ChatEvent {
  const factory _GetConversations(final BuildContext context) =
      _$GetConversationsImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetConversationsImplCopyWith<_$GetConversationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedPageImplCopyWith<$Res> {
  factory _$$ChangeSelectedPageImplCopyWith(_$ChangeSelectedPageImpl value,
          $Res Function(_$ChangeSelectedPageImpl) then) =
      __$$ChangeSelectedPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, int pageIndex});
}

/// @nodoc
class __$$ChangeSelectedPageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChangeSelectedPageImpl>
    implements _$$ChangeSelectedPageImplCopyWith<$Res> {
  __$$ChangeSelectedPageImplCopyWithImpl(_$ChangeSelectedPageImpl _value,
      $Res Function(_$ChangeSelectedPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? pageIndex = null,
  }) {
    return _then(_$ChangeSelectedPageImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedPageImpl implements _ChangeSelectedPage {
  const _$ChangeSelectedPageImpl(this.context, this.pageIndex);

  @override
  final BuildContext context;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'ChatEvent.changeSelectedPage(context: $context, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedPageImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedPageImplCopyWith<_$ChangeSelectedPageImpl> get copyWith =>
      __$$ChangeSelectedPageImplCopyWithImpl<_$ChangeSelectedPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return changeSelectedPage(context, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return changeSelectedPage?.call(context, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (changeSelectedPage != null) {
      return changeSelectedPage(context, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return changeSelectedPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return changeSelectedPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (changeSelectedPage != null) {
      return changeSelectedPage(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedPage implements ChatEvent {
  const factory _ChangeSelectedPage(
          final BuildContext context, final int pageIndex) =
      _$ChangeSelectedPageImpl;

  BuildContext get context;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$ChangeSelectedPageImplCopyWith<_$ChangeSelectedPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenConversationImplCopyWith<$Res> {
  factory _$$OpenConversationImplCopyWith(_$OpenConversationImpl value,
          $Res Function(_$OpenConversationImpl) then) =
      __$$OpenConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String conversationId, String userName});
}

/// @nodoc
class __$$OpenConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$OpenConversationImpl>
    implements _$$OpenConversationImplCopyWith<$Res> {
  __$$OpenConversationImplCopyWithImpl(_$OpenConversationImpl _value,
      $Res Function(_$OpenConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? conversationId = null,
    Object? userName = null,
  }) {
    return _then(_$OpenConversationImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenConversationImpl implements _OpenConversation {
  const _$OpenConversationImpl(
      this.context, this.conversationId, this.userName);

  @override
  final BuildContext context;
  @override
  final String conversationId;
  @override
  final String userName;

  @override
  String toString() {
    return 'ChatEvent.openConversation(context: $context, conversationId: $conversationId, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenConversationImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, conversationId, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenConversationImplCopyWith<_$OpenConversationImpl> get copyWith =>
      __$$OpenConversationImplCopyWithImpl<_$OpenConversationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return openConversation(context, conversationId, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return openConversation?.call(context, conversationId, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (openConversation != null) {
      return openConversation(context, conversationId, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return openConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return openConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (openConversation != null) {
      return openConversation(this);
    }
    return orElse();
  }
}

abstract class _OpenConversation implements ChatEvent {
  const factory _OpenConversation(
      final BuildContext context,
      final String conversationId,
      final String userName) = _$OpenConversationImpl;

  BuildContext get context;
  String get conversationId;
  String get userName;
  @JsonKey(ignore: true)
  _$$OpenConversationImplCopyWith<_$OpenConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartNewConversationImplCopyWith<$Res> {
  factory _$$StartNewConversationImplCopyWith(_$StartNewConversationImpl value,
          $Res Function(_$StartNewConversationImpl) then) =
      __$$StartNewConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$StartNewConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartNewConversationImpl>
    implements _$$StartNewConversationImplCopyWith<$Res> {
  __$$StartNewConversationImplCopyWithImpl(_$StartNewConversationImpl _value,
      $Res Function(_$StartNewConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$StartNewConversationImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$StartNewConversationImpl implements _StartNewConversation {
  const _$StartNewConversationImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.startNewConversation(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartNewConversationImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartNewConversationImplCopyWith<_$StartNewConversationImpl>
      get copyWith =>
          __$$StartNewConversationImplCopyWithImpl<_$StartNewConversationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return startNewConversation(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return startNewConversation?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (startNewConversation != null) {
      return startNewConversation(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return startNewConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return startNewConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (startNewConversation != null) {
      return startNewConversation(this);
    }
    return orElse();
  }
}

abstract class _StartNewConversation implements ChatEvent {
  const factory _StartNewConversation(final BuildContext context) =
      _$StartNewConversationImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$StartNewConversationImplCopyWith<_$StartNewConversationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshConversationsImplCopyWith<$Res> {
  factory _$$RefreshConversationsImplCopyWith(_$RefreshConversationsImpl value,
          $Res Function(_$RefreshConversationsImpl) then) =
      __$$RefreshConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$RefreshConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$RefreshConversationsImpl>
    implements _$$RefreshConversationsImplCopyWith<$Res> {
  __$$RefreshConversationsImplCopyWithImpl(_$RefreshConversationsImpl _value,
      $Res Function(_$RefreshConversationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$RefreshConversationsImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$RefreshConversationsImpl implements _RefreshConversations {
  const _$RefreshConversationsImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.refreshConversations(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshConversationsImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshConversationsImplCopyWith<_$RefreshConversationsImpl>
      get copyWith =>
          __$$RefreshConversationsImplCopyWithImpl<_$RefreshConversationsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return refreshConversations(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return refreshConversations?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (refreshConversations != null) {
      return refreshConversations(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return refreshConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return refreshConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (refreshConversations != null) {
      return refreshConversations(this);
    }
    return orElse();
  }
}

abstract class _RefreshConversations implements ChatEvent {
  const factory _RefreshConversations(final BuildContext context) =
      _$RefreshConversationsImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$RefreshConversationsImplCopyWith<_$RefreshConversationsImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ChatEventCopyWithImpl<$Res, _$SendErrorEventImpl>
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
    return 'ChatEvent.sendErrorEvent(apiErrorModel: $apiErrorModel)';
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
    required TResult Function(
            BuildContext context, List<ConversationModel> conversations)
        onNewMessagesReceived,
    required TResult Function(BuildContext context) getConversations,
    required TResult Function(BuildContext context, int pageIndex)
        changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function(BuildContext context) startNewConversation,
    required TResult Function(BuildContext context) refreshConversations,
    required TResult Function(ApiErrorModel apiErrorModel) sendErrorEvent,
  }) {
    return sendErrorEvent(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult? Function(BuildContext context)? getConversations,
    TResult? Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function(BuildContext context)? startNewConversation,
    TResult? Function(BuildContext context)? refreshConversations,
    TResult? Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
  }) {
    return sendErrorEvent?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, List<ConversationModel> conversations)?
        onNewMessagesReceived,
    TResult Function(BuildContext context)? getConversations,
    TResult Function(BuildContext context, int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function(BuildContext context)? startNewConversation,
    TResult Function(BuildContext context)? refreshConversations,
    TResult Function(ApiErrorModel apiErrorModel)? sendErrorEvent,
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
    required TResult Function(_OnNewMessagesReceived value)
        onNewMessagesReceived,
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
    required TResult Function(_RefreshConversations value) refreshConversations,
    required TResult Function(_SendErrorEvent value) sendErrorEvent,
  }) {
    return sendErrorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
    TResult? Function(_RefreshConversations value)? refreshConversations,
    TResult? Function(_SendErrorEvent value)? sendErrorEvent,
  }) {
    return sendErrorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewMessagesReceived value)? onNewMessagesReceived,
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    TResult Function(_RefreshConversations value)? refreshConversations,
    TResult Function(_SendErrorEvent value)? sendErrorEvent,
    required TResult orElse(),
  }) {
    if (sendErrorEvent != null) {
      return sendErrorEvent(this);
    }
    return orElse();
  }
}

abstract class _SendErrorEvent implements ChatEvent {
  const factory _SendErrorEvent(final ApiErrorModel apiErrorModel) =
      _$SendErrorEventImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$SendErrorEventImplCopyWith<_$SendErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatListTileEntity> conversations) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatListTileEntity> conversations)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatListTileEntity> conversations)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ChangeSelectedPageIndex value)
        changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChatState.initial()';
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
    required TResult Function(List<ChatListTileEntity> conversations) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatListTileEntity> conversations)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatListTileEntity> conversations)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ChangeSelectedPageIndex value)
        changeSelectedPageIndex,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatListTileEntity> conversations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$LoadedImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ChatListTileEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<ChatListTileEntity> conversations)
      : _conversations = conversations;

  final List<ChatListTileEntity> _conversations;
  @override
  List<ChatListTileEntity> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatState.loaded(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatListTileEntity> conversations) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return loaded(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatListTileEntity> conversations)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return loaded?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatListTileEntity> conversations)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ChangeSelectedPageIndex value)
        changeSelectedPageIndex,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ChatState {
  const factory Loaded(final List<ChatListTileEntity> conversations) =
      _$LoadedImpl;

  List<ChatListTileEntity> get conversations;
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
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ChatState.error(apiErrorModel: $apiErrorModel)';
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
    required TResult Function(List<ChatListTileEntity> conversations) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatListTileEntity> conversations)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatListTileEntity> conversations)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ChangeSelectedPageIndex value)
        changeSelectedPageIndex,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ChatState {
  const factory Error(final ApiErrorModel apiErrorModel) = _$ErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedPageIndexImplCopyWith<$Res> {
  factory _$$ChangeSelectedPageIndexImplCopyWith(
          _$ChangeSelectedPageIndexImpl value,
          $Res Function(_$ChangeSelectedPageIndexImpl) then) =
      __$$ChangeSelectedPageIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedPageIndex});
}

/// @nodoc
class __$$ChangeSelectedPageIndexImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChangeSelectedPageIndexImpl>
    implements _$$ChangeSelectedPageIndexImplCopyWith<$Res> {
  __$$ChangeSelectedPageIndexImplCopyWithImpl(
      _$ChangeSelectedPageIndexImpl _value,
      $Res Function(_$ChangeSelectedPageIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPageIndex = null,
  }) {
    return _then(_$ChangeSelectedPageIndexImpl(
      null == selectedPageIndex
          ? _value.selectedPageIndex
          : selectedPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedPageIndexImpl implements ChangeSelectedPageIndex {
  const _$ChangeSelectedPageIndexImpl(this.selectedPageIndex);

  @override
  final int selectedPageIndex;

  @override
  String toString() {
    return 'ChatState.changeSelectedPageIndex(selectedPageIndex: $selectedPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedPageIndexImpl &&
            (identical(other.selectedPageIndex, selectedPageIndex) ||
                other.selectedPageIndex == selectedPageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedPageIndexImplCopyWith<_$ChangeSelectedPageIndexImpl>
      get copyWith => __$$ChangeSelectedPageIndexImplCopyWithImpl<
          _$ChangeSelectedPageIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatListTileEntity> conversations) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex(selectedPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatListTileEntity> conversations)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex?.call(selectedPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatListTileEntity> conversations)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedPageIndex != null) {
      return changeSelectedPageIndex(selectedPageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ChangeSelectedPageIndex value)
        changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ChangeSelectedPageIndex value)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedPageIndex != null) {
      return changeSelectedPageIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedPageIndex implements ChatState {
  const factory ChangeSelectedPageIndex(final int selectedPageIndex) =
      _$ChangeSelectedPageIndexImpl;

  int get selectedPageIndex;
  @JsonKey(ignore: true)
  _$$ChangeSelectedPageIndexImplCopyWith<_$ChangeSelectedPageIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
    required TResult Function() getConversations,
    required TResult Function(int pageIndex) changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function() startNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getConversations,
    TResult? Function(int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function()? startNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getConversations,
    TResult Function(int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function()? startNewConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
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
abstract class _$$GetConversationsImplCopyWith<$Res> {
  factory _$$GetConversationsImplCopyWith(_$GetConversationsImpl value,
          $Res Function(_$GetConversationsImpl) then) =
      __$$GetConversationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetConversationsImpl>
    implements _$$GetConversationsImplCopyWith<$Res> {
  __$$GetConversationsImplCopyWithImpl(_$GetConversationsImpl _value,
      $Res Function(_$GetConversationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetConversationsImpl implements _GetConversations {
  const _$GetConversationsImpl();

  @override
  String toString() {
    return 'ChatEvent.getConversations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetConversationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getConversations,
    required TResult Function(int pageIndex) changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function() startNewConversation,
  }) {
    return getConversations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getConversations,
    TResult? Function(int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function()? startNewConversation,
  }) {
    return getConversations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getConversations,
    TResult Function(int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function()? startNewConversation,
    required TResult orElse(),
  }) {
    if (getConversations != null) {
      return getConversations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
  }) {
    return getConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
  }) {
    return getConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    required TResult orElse(),
  }) {
    if (getConversations != null) {
      return getConversations(this);
    }
    return orElse();
  }
}

abstract class _GetConversations implements ChatEvent {
  const factory _GetConversations() = _$GetConversationsImpl;
}

/// @nodoc
abstract class _$$ChangeSelectedPageImplCopyWith<$Res> {
  factory _$$ChangeSelectedPageImplCopyWith(_$ChangeSelectedPageImpl value,
          $Res Function(_$ChangeSelectedPageImpl) then) =
      __$$ChangeSelectedPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
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
    Object? pageIndex = null,
  }) {
    return _then(_$ChangeSelectedPageImpl(
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedPageImpl implements _ChangeSelectedPage {
  const _$ChangeSelectedPageImpl(this.pageIndex);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'ChatEvent.changeSelectedPage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedPageImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedPageImplCopyWith<_$ChangeSelectedPageImpl> get copyWith =>
      __$$ChangeSelectedPageImplCopyWithImpl<_$ChangeSelectedPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getConversations,
    required TResult Function(int pageIndex) changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function() startNewConversation,
  }) {
    return changeSelectedPage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getConversations,
    TResult? Function(int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function()? startNewConversation,
  }) {
    return changeSelectedPage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getConversations,
    TResult Function(int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function()? startNewConversation,
    required TResult orElse(),
  }) {
    if (changeSelectedPage != null) {
      return changeSelectedPage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
  }) {
    return changeSelectedPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
  }) {
    return changeSelectedPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    required TResult orElse(),
  }) {
    if (changeSelectedPage != null) {
      return changeSelectedPage(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedPage implements ChatEvent {
  const factory _ChangeSelectedPage(final int pageIndex) =
      _$ChangeSelectedPageImpl;

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
    required TResult Function() getConversations,
    required TResult Function(int pageIndex) changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function() startNewConversation,
  }) {
    return openConversation(context, conversationId, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getConversations,
    TResult? Function(int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function()? startNewConversation,
  }) {
    return openConversation?.call(context, conversationId, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getConversations,
    TResult Function(int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function()? startNewConversation,
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
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
  }) {
    return openConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
  }) {
    return openConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
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
}

/// @nodoc
class __$$StartNewConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartNewConversationImpl>
    implements _$$StartNewConversationImplCopyWith<$Res> {
  __$$StartNewConversationImplCopyWithImpl(_$StartNewConversationImpl _value,
      $Res Function(_$StartNewConversationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartNewConversationImpl implements _StartNewConversation {
  const _$StartNewConversationImpl();

  @override
  String toString() {
    return 'ChatEvent.startNewConversation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartNewConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getConversations,
    required TResult Function(int pageIndex) changeSelectedPage,
    required TResult Function(
            BuildContext context, String conversationId, String userName)
        openConversation,
    required TResult Function() startNewConversation,
  }) {
    return startNewConversation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getConversations,
    TResult? Function(int pageIndex)? changeSelectedPage,
    TResult? Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult? Function()? startNewConversation,
  }) {
    return startNewConversation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getConversations,
    TResult Function(int pageIndex)? changeSelectedPage,
    TResult Function(
            BuildContext context, String conversationId, String userName)?
        openConversation,
    TResult Function()? startNewConversation,
    required TResult orElse(),
  }) {
    if (startNewConversation != null) {
      return startNewConversation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetConversations value) getConversations,
    required TResult Function(_ChangeSelectedPage value) changeSelectedPage,
    required TResult Function(_OpenConversation value) openConversation,
    required TResult Function(_StartNewConversation value) startNewConversation,
  }) {
    return startNewConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetConversations value)? getConversations,
    TResult? Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult? Function(_OpenConversation value)? openConversation,
    TResult? Function(_StartNewConversation value)? startNewConversation,
  }) {
    return startNewConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetConversations value)? getConversations,
    TResult Function(_ChangeSelectedPage value)? changeSelectedPage,
    TResult Function(_OpenConversation value)? openConversation,
    TResult Function(_StartNewConversation value)? startNewConversation,
    required TResult orElse(),
  }) {
    if (startNewConversation != null) {
      return startNewConversation(this);
    }
    return orElse();
  }
}

abstract class _StartNewConversation implements ChatEvent {
  const factory _StartNewConversation() = _$StartNewConversationImpl;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ConversationModel> conversations) loaded,
    required TResult Function(String message) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ConversationModel> conversations)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ConversationModel> conversations)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(List<ConversationModel> conversations) loaded,
    required TResult Function(String message) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ConversationModel> conversations)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ConversationModel> conversations)? loaded,
    TResult Function(String message)? error,
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
  $Res call({List<ConversationModel> conversations});
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
              as List<ConversationModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<ConversationModel> conversations)
      : _conversations = conversations;

  final List<ConversationModel> _conversations;
  @override
  List<ConversationModel> get conversations {
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
    required TResult Function(List<ConversationModel> conversations) loaded,
    required TResult Function(String message) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return loaded(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ConversationModel> conversations)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return loaded?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ConversationModel> conversations)? loaded,
    TResult Function(String message)? error,
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
  const factory Loaded(final List<ConversationModel> conversations) =
      _$LoadedImpl;

  List<ConversationModel> get conversations;
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ConversationModel> conversations) loaded,
    required TResult Function(String message) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ConversationModel> conversations)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ConversationModel> conversations)? loaded,
    TResult Function(String message)? error,
    TResult Function(int selectedPageIndex)? changeSelectedPageIndex,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
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
    required TResult Function(List<ConversationModel> conversations) loaded,
    required TResult Function(String message) error,
    required TResult Function(int selectedPageIndex) changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex(selectedPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ConversationModel> conversations)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int selectedPageIndex)? changeSelectedPageIndex,
  }) {
    return changeSelectedPageIndex?.call(selectedPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ConversationModel> conversations)? loaded,
    TResult Function(String message)? error,
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

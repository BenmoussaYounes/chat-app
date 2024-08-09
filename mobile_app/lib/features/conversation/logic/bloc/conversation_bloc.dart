import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/message_bubble_model.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';
part 'conversation_bloc.freezed.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  TextEditingController newMessageController = TextEditingController();

  ConversationBloc() : super(const _Initial()) {
    on<_GetMessages>(_getConversation);
    on<_SendMessage>(_sendMessage);
  }

  Future<void> _getConversation(
      _GetMessages event, Emitter<ConversationState> emit) async {
    await Future.delayed(const Duration(seconds: 2));

    emit(const ConversationState.loaded([]));
  }

  void _sendMessage(_SendMessage event, Emitter<ConversationState> emit) {
    final String newMessage = newMessageController.text.trim();
    newMessageController.clear();

    emit(
      ConversationState.loaded([
        MessageBubbleModel(
          id: '3',
          message: newMessage,
          messageTime: '12:02',
          isMessageSeen: false,
          isMe: true,
        ),
      ]),
    );
  }
}

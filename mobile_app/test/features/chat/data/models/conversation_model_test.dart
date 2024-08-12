import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_app/core/enums/user_enums.dart';
import 'package:mobile_app/features/chat/data/models/conversation_model.dart';

void main() {
  late Map<String, dynamic> json;
  setUp(() {
    json = {
      'id': 'DZ',
      'createAt': Timestamp.now(),
      'younesUnSeenMessagesCount': 1,
      'aliUnSeenMessagesCount': 2,
    };
  });

  group('ConversationModel test cases', () {
    test('case selected user is younes', () {
      // arrange
      const User selectedUser = User.younes;

      // act
      final conversation = ConversationModel.fromJson(json, selectedUser);

      // assert
      expect(conversation.id, 'DZ');
      expect(conversation.name, 'Ali');
      expect(conversation.createdAt, isA<DateTime>());
      expect(conversation.unSeenMessagesCount, 2);
    });

    test('case selected user is ali', () {
      // arrange
      const User selectedUser = User.ali;

      // act
      final conversation = ConversationModel.fromJson(json, selectedUser);

      // assert
      expect(conversation.id, 'DZ');
      expect(conversation.name, 'Younes');
      expect(conversation.createdAt, isA<DateTime>());
      expect(conversation.unSeenMessagesCount, 1);
    });
  });
}

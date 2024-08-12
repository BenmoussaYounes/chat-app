import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_app/features/chat/data/models/last_message_model.dart';

void main() {
  group('LastMessageModel test cases', () {
    test('should return a valid model from JSON', () {
      // arrange
      final json = {
        'message': 'Hello',
        'messageTime': Timestamp.now(),
      };

      // act
      final lastMessage = LastMessageModel.fromJson(json);

      // assert
      expect(lastMessage.message, 'Hello');
      expect(lastMessage.messageTime, isA<DateTime>());
    });
  });
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_app/core/enums/user_enums.dart';
import 'package:mobile_app/features/conversation/data/models/message_bubble_model.dart';

void main() {
  late Map<String, dynamic> messageJson;
  setUp(() {
    messageJson = {
      'id': 'DZ',
      'isMessageSeen': true,
      'message': "How was your day",
      'messageTime': Timestamp.now(),
      'sender': "ali"
    };
  });

  group('MessageBubbleModel test cases', () {
    test('case selected user is younes', () {
      // arrange
      User selectedUser = User.younes;
      // act
      final messageBubble =
          MessageBubbleModel.fromJson(messageJson, selectedUser);
      // assert
      expect(messageBubble.id, 'DZ');
      expect(messageBubble.isMe, false);
      expect(messageBubble.message, "How was your day");
      expect(messageBubble.messageTime, isA<DateTime>());
      expect(messageBubble.isMessageSeen, true);
    });

    test('case selected user is ali', () {
      // arrange
      User selectedUser = User.ali;
      // act
      final messageBubble =
          MessageBubbleModel.fromJson(messageJson, selectedUser);
      // assert
      expect(messageBubble.id, 'DZ');
      expect(messageBubble.isMe, true);
      expect(messageBubble.message, "How was your day");
      expect(messageBubble.messageTime, isA<DateTime>());
      expect(messageBubble.isMessageSeen, true);
    });
  });
}

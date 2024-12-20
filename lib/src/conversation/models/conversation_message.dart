/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_message.freezed.dart';
part 'conversation_message.g.dart';

enum MessageType { user, bot, loading }

@freezed
class ConversationMessage with _$ConversationMessage {
  factory ConversationMessage({
    required MessageType type,
    required String conversationId,
    required String content,
    List<BinaryData>? binaryData,
    double? responseTime,
    String? agent,
  }) = _ConversationMessage;

  const ConversationMessage._();

  isBinary() => binaryData != null && binaryData!.isNotEmpty && content.isEmpty;

  factory ConversationMessage.fromJson(Map<String, Object?> json) =>
      _$ConversationMessageFromJson(json);
}

ConversationMessage loadingMessage(String conversationId) =>
    ConversationMessage(
      type: MessageType.loading,
      conversationId: conversationId,
      content: '...',
    );

@freezed
class BinaryData with _$BinaryData {
  factory BinaryData({
    required String data,
    required String mimeType,
  }) = _BinaryData;

  factory BinaryData.fromJson(Map<String, Object?> json) =>
      _$BinaryDataFromJson(json);
}

//
// Extension on List of ConversationMessages.
//
extension MessagesExtension on List<ConversationMessage> {
  List<ConversationMessage> filterLoading() {
    final newMessages = <ConversationMessage>[];
    for (final message in this) {
      if (message.type != MessageType.loading) {
        newMessages.add(message);
      }
    }
    return newMessages;
  }
}

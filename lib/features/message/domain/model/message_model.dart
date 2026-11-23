import 'package:avanti_test/features/message/domain/model/message_status.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

typedef ChatMessages = Map<Id, MessageModel>;

@freezed
sealed class MessageModel with _$MessageModel {
  const factory MessageModel({
    required Id messageId,
    required Id authorId,
    required String messageData,
    required MessageStatus status,
  }) = _MessageModel;
}

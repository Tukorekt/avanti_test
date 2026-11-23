import 'package:avanti_test/mock_constants.dart';
import 'package:avanti_test/features/chat/data/storage/chat_storage_interface.dart';
import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IChatsStorage)
final class ChatsStorageMock() implements IChatsStorage {
  final Map<Id, ChatMessages> _cahcedChats = {};

  @override
  void addMessageToChat(Id chatId, MessageModel message) {
    _cahcedChats[chatId]?[message.messageId] = message;
  }

  @override
  ChatMessages getMessages(Id chatId) {
    if (isTest && _cahcedChats.isEmpty) {
      _cahcedChats[baseChatId] = {...mockMessages};
    }
    return _cahcedChats[chatId] ?? <Id, MessageModel>{};
  }
}

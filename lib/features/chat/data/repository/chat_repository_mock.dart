import 'package:avanti_test/features/chat/data/repository/chat_repository_interface.dart';
import 'package:avanti_test/features/chat/data/storage/chat_storage_interface.dart';
import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IChatRepository)
class const ChatRepositoryMock({required final IChatsStorage _chatsStorage})
    implements IChatRepository {
  /// Синхронное получение текущих сообщений в чате
  @override
  ChatMessages getChatMessages(Id chatId) {
    return _chatsStorage.getMessages(chatId);
  }

  /// В формате Stream, чтобы можно было вернуть 2 состояния
  /// сразу - процесс отправки
  /// по таймеру или по ответу api - об успехе/ошибке
  @override
  Stream<ChatMessages> sendMessage(
    Id chatId,
    MessageModel message,
    bool isRetry,
  ) async* {
    _chatsStorage.addMessageToChat(chatId, message.copyWith(status: .pending));
    yield getChatMessages(chatId);

    await Future.delayed(
      const Duration(seconds: 3),
      () => _chatsStorage.addMessageToChat(
        chatId,
        message.copyWith(status: isRetry ? .sent : .failure),
      ),
    );
    yield getChatMessages(chatId);
  }
}

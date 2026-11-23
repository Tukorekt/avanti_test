import 'package:avanti_test/features/chat/data/repository/chat_repository_interface.dart';
import 'package:avanti_test/features/chat/domain/interactor/chat_interactor_interface.dart';
import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:injectable/injectable.dart';

/// Интерактор использую как объединение нескольких use case в один объект
/// В данном случае нет смысла разбивать поведение на 3 use case
@Injectable(as: IChatInteractor)
class const ChatInteractorImp({required final IChatRepository _chatRepository})
    implements IChatInteractor {
  @override
  ChatMessages getChatMessages(Id chatId) =>
      _chatRepository.getChatMessages(chatId);

  @override
  Stream<ChatMessages> sendMessage(
    Id chatId,
    MessageModel message,
    bool isRetry,
  ) => _chatRepository.sendMessage(chatId, message, isRetry);
}

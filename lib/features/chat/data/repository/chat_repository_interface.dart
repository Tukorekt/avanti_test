import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/utils/typedefs.dart';

abstract interface class IChatRepository {
  ChatMessages getChatMessages(Id chatId);

  Stream<ChatMessages> sendMessage(
    Id chatId,
    MessageModel message,
    bool isRetry,
  );
}

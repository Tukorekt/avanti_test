import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/utils/typedefs.dart';

abstract interface class const IChatsStorage() {
  void addMessageToChat(Id chatId, MessageModel message);

  ChatMessages getMessages(Id chatId);
}

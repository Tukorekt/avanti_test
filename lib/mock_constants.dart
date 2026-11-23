import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/features/message/domain/model/message_status.dart';
import 'package:avanti_test/utils/typedefs.dart';

const isTest = true;

const Id clientId = 'user1';
const Id author1Id = 'author1';

const Id baseChatId = 'room1';

const ChatMessages mockMessages = {
  '1': MessageModel(
    messageId: '1',
    authorId: author1Id,
    messageData: 'Зеленый - sent, нельзя нажимать',
    status: MessageStatus.sent,
  ),
  '2': MessageModel(
    messageId: '2',
    authorId: clientId,
    messageData: 'Красный - failed, можно нажимать',
    status: MessageStatus.sent,
  ),
  '3': MessageModel(
    messageId: '3',
    authorId: author1Id,
    messageData: 'Серый - pending, нельзя нажимать',
    status: MessageStatus.sent,
  ),
  '4': MessageModel(
    messageId: '4',
    authorId: clientId,
    messageData: 'Тест',
    status: MessageStatus.sent,
  ),
  '5': MessageModel(
    messageId: '5',
    authorId: clientId,
    messageData: 'Ооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооочень длинное сообщение от меня',
    status: MessageStatus.sent,
  ),
  '6': MessageModel(
    messageId: '6',
    authorId: author1Id,
    messageData: 'Ооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооооочень длинное сообщение от собеседника',
    status: MessageStatus.sent,
  ),
  '7': MessageModel(
    messageId: '7',
    authorId: author1Id,
    messageData: 'Тест',
    status: MessageStatus.sent,
  ),
  '8': MessageModel(
    messageId: '8',
    authorId: clientId,
    messageData: 'Тест',
    status: MessageStatus.sent,
  ),
  '9': MessageModel(
    messageId: '9',
    authorId: author1Id,
    messageData: 'Тест',
    status: MessageStatus.sent,
  ),
  '10': MessageModel(
    messageId: '10',
    authorId: author1Id,
    messageData: 'Тест',
    status: MessageStatus.sent,
  ),
};

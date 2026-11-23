part of 'chat_bloc.dart';

@freezed
sealed class ChatBlocEvent with _$ChatBlocEvent {
  const factory ChatBlocEvent.loadChat(Id chatId) = _Load;

  const factory ChatBlocEvent.sendMessage({
    required Id chatId,
    required String message,
    required Id clientId,
  }) = _SendMessage;

  const factory ChatBlocEvent.resendMessage({
    required Id chatId,
    required MessageModel messageModel,
  }) = _ResendMessage;
}

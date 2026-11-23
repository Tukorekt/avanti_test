part of 'chat_bloc.dart';

@freezed
sealed class ChatBlocState with _$ChatBlocState {
  const factory ChatBlocState({
    required Map<Id, MessageModel> messages,
    required Id chatId,
  }) = _ChatBlocState;
}

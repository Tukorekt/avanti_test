import 'dart:async';

import 'package:avanti_test/common/bloc/base_bloc.dart';
import 'package:avanti_test/common/bloc/base_state.dart';
import 'package:avanti_test/features/chat/domain/interactor/chat_interactor_interface.dart';
import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/features/message/domain/model/message_status.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/v4.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends BaseBloc<ChatBlocEvent, ChatBlocState> {
  final IChatInteractor _chatInteractor;

  new({required this._chatInteractor}) : super(const BaseState.loading()) {
    on<ChatBlocEvent>(_resolveEvent);
  }

  Future<void> _resolveEvent(
    ChatBlocEvent event,
    Emitter<BaseState<ChatBlocState>> emit,
  ) => switch (event) {
    _Load e => _load(e, emit),
    _SendMessage e => _sendMessage(e, emit),
    _ResendMessage e => _resendMessage(e, emit),
  };

  Future<void> _load(
    _Load event,
    Emitter<BaseState<ChatBlocState>> emit,
  ) async {
    final messages = _chatInteractor.getChatMessages(event.chatId);

    emit(
      BaseState.success(
        data: ChatBlocState(chatId: event.chatId, messages: messages),
        timeStamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  Future<void> _sendMessage(
    _SendMessage event,
    Emitter<BaseState<ChatBlocState>> emit,
  ) {
    final newMessageModel = MessageModel(
      messageId: const UuidV4().generate(),
      authorId: event.clientId,
      messageData: event.message,
      status: MessageStatus.pending,
    );

    return _uploadMessages(
      messageModel: newMessageModel,
      chatId: event.chatId,
      emit: emit,
      isRetry: false,
    );
  }

  Future<void> _resendMessage(
    _ResendMessage event,
    Emitter<BaseState<ChatBlocState>> emit,
  ) {
    final newMessageModel = event.messageModel.copyWith(
      status: MessageStatus.pending,
    );
    return _uploadMessages(
      messageModel: newMessageModel,
      chatId: event.chatId,
      emit: emit,
      isRetry: true,
    );
  }

  Future<void> _uploadMessages({
    required MessageModel messageModel,
    required Id chatId,
    required Emitter<BaseState<ChatBlocState>> emit,
    required bool isRetry,
  }) async {
    if (state is! Success<ChatBlocState>) return;

    final successState = state as Success<ChatBlocState>;
    final currentData = successState.data;

    // Асинхронная отправка
    await emit.forEach(
      _chatInteractor.sendMessage(chatId, messageModel, isRetry),
      onData: (_) {
        final messages = _chatInteractor.getChatMessages(chatId);
        return BaseState.success(
          data: currentData.copyWith(messages: messages),
          timeStamp: DateTime.now().millisecondsSinceEpoch,
        );
      },
      onError: (error, stackTrace) {
        return BaseState.failure(
          data: currentData,
          timeStamp: DateTime.now().millisecondsSinceEpoch,
          message: error.toString(),
        );
      },
    );
  }
}

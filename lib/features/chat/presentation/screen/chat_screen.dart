import 'package:avanti_test/app/di/get_it.dart';
import 'package:avanti_test/common/widget/bloc_resolver/bloc_resolver.dart';
import 'package:avanti_test/mock_constants.dart';
import 'package:avanti_test/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:avanti_test/features/message/presentation/widget/message.dart';
import 'package:avanti_test/ui_constants.dart';
import 'package:avanti_test/utils/typedefs.dart';
import 'package:material_ui/material_ui.dart';

part 'chat_failure.dart';
part 'chat_loading.dart';
part 'chat_success.dart';

class const ChatScreen({super.key, final Id _chatId = baseChatId})
    extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _bloc = getIt.get<ChatBloc>();

  /// Здесь в будущем нужно после получения с сервера clientId
  /// регистрировать в getIt и забирать оттуда
  /// final _client = getIt.get< ClientId>();
  final _client = clientId;

  @override
  void initState() {
    super.initState();
    _bloc.add(ChatBlocEvent.loadChat(widget._chatId));
  }

  @override
  Widget build(BuildContext context) {
    return AppBlocResolver<ChatBlocEvent, ChatBlocState>(
      bloc: _bloc,
      loading: (_, _) => const _ChatLoading(),
      failure: (_, _) => const _ChatFailure(),
      success: (_, state) => _ChatSuccess(
        messages: state.messages,
        sendMessage: (value) => _sendMessage(state.chatId, value),
        clientId: _client,
        resendMessage: (model) => _resendMessage(state.chatId, model),
      ),
    );
  }

  void _sendMessage(Id chatId, String value) {
    if (value.isEmpty) return;

    _bloc.add(
      ChatBlocEvent.sendMessage(
        chatId: chatId,
        message: value,
        clientId: _client,
      ),
    );
  }

  void _resendMessage(Id chatId, MessageModel message) {
    _bloc.add(
      ChatBlocEvent.resendMessage(chatId: chatId, messageModel: message),
    );
  }
}

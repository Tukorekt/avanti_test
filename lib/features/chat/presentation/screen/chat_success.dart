part of 'chat_screen.dart';

class const _ChatSuccess({
  required final ChatMessages _messages,
  required final OnValue<String> _sendMessage,
  required final OnValue<MessageModel> _resendMessage,
  required final Id _clientId,
}) extends StatefulWidget {
  @override
  State<_ChatSuccess> createState() => _ChatSuccessState();
}

class _ChatSuccessState extends State<_ChatSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const CircleAvatar(child: Icon(Icons.person, color: Colors.grey)),
            Text(
              widget._clientId,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
        toolbarHeight: 64,
        centerTitle: true,
        backgroundColor: Colors.white.withAlpha(10),
        shadowColor: Colors.transparent,
        elevation: 1,
      ),
      backgroundColor: Colors.black.withAlpha(240),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsetsGeometry.only(
              top: 16,
              bottom: messageBarHeight,
            ),
            sliver: SliverList.separated(
              itemCount: widget._messages.length,
              itemBuilder: (_, index) {
                final entry = widget._messages.entries.elementAt(index);
                final message = entry.value;
                final isCurrentUser = message.authorId == widget._clientId;
                return Container(
                  alignment: isCurrentUser
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: isCurrentUser ? 48 : 4,
                    right: isCurrentUser ? 4 : 48,
                  ),
                  child: Message(
                    message: message,
                    onTap: () => message.status == .failure
                        ? widget._resendMessage(message)
                        : {},
                  ),
                );
              },
              separatorBuilder: (_, _) => const SizedBox(height: 8),
            ),
          ),
        ],
      ),
      bottomSheet: _MessageInput(onSubmit: widget._sendMessage),
    );
  }
}

class const _MessageInput({required final OnValue<String> _onSubmit})
    extends StatefulWidget {
  @override
  State<_MessageInput> createState() => __MessageInputState();
}

class __MessageInputState extends State<_MessageInput> {
  final _textController = TextEditingController();

  void _onSubmit(String value) {
    widget._onSubmit(value);
    setState(() {
      _textController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      shadowColor: Colors.transparent,
      color: Colors.black12,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(messageInputPadding),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              child: TextFormField(
                controller: _textController,
                onFieldSubmitted: _onSubmit,
                decoration: const InputDecoration(
                  hintText: 'Введите сообщение',
                  constraints: BoxConstraints(maxHeight: messageMaxHeight),
                  border: OutlineInputBorder(
                    gapPadding: 4,
                    borderSide: BorderSide(
                      color: Colors.black26,
                      strokeAlign: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(4),
                ),
                maxLines: null,
              ),
            ),
            IconButton(
              onPressed: () => _onSubmit(_textController.text),
              icon: const Icon(Icons.send, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

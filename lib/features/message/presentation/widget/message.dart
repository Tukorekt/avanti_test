import 'package:avanti_test/features/message/domain/model/message_model.dart';
import 'package:material_ui/material_ui.dart';

class const Message({
  super.key,
  required final MessageModel _message,
  required final VoidCallback _onTap,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: _message.status.messageColor,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: InkWell(
        onTap: _message.status.canTap ? _onTap : null,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Padding(
          padding: const EdgeInsetsGeometry.all(10),
          child: Text(_message.messageData),
        ),
      ),
    );
  }
}

import 'dart:ui';

enum const MessageStatus(final Color messageColor, final bool canTap) {
  pending(Color.fromRGBO(200, 200, 200, 1), false),
  sent(Color.fromRGBO(0, 200, 0, 1), false),
  failure(Color.fromRGBO(200, 0, 0, 1), true),
}

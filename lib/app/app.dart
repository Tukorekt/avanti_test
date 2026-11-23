import 'package:avanti_test/features/chat/presentation/screen/chat_screen.dart';
import 'package:material_ui/material_ui.dart';

class const App({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Не настраивал
    return const MaterialApp(home: ChatScreen());
  }
}

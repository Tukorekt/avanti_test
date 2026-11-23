import 'package:avanti_test/app/app.dart';
import 'package:avanti_test/app/di/get_it.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  configureDependencies();
  runApp(const App());
}

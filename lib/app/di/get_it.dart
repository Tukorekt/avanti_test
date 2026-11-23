import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_it.config.dart';

// Привычно испльзовать get_it + injectable в проектах для DI
final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

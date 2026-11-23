// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:avanti_test/features/chat/data/repository/chat_repository_interface.dart'
    as _i405;
import 'package:avanti_test/features/chat/data/repository/chat_repository_mock.dart'
    as _i504;
import 'package:avanti_test/features/chat/data/storage/chat_storage_interface.dart'
    as _i49;
import 'package:avanti_test/features/chat/data/storage/chat_storage_mock.dart'
    as _i498;
import 'package:avanti_test/features/chat/domain/interactor/chat_interactor_imp.dart'
    as _i644;
import 'package:avanti_test/features/chat/domain/interactor/chat_interactor_interface.dart'
    as _i860;
import 'package:avanti_test/features/chat/presentation/bloc/chat_bloc.dart'
    as _i834;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i49.IChatsStorage>(() => _i498.ChatsStorageMock());
    gh.factory<_i405.IChatRepository>(
      () => _i504.ChatRepositoryMock(chatsStorage: gh<_i49.IChatsStorage>()),
    );
    gh.factory<_i860.IChatInteractor>(
      () =>
          _i644.ChatInteractorImp(chatRepository: gh<_i405.IChatRepository>()),
    );
    gh.factory<_i834.ChatBloc>(
      () => _i834.ChatBloc(chatInteractor: gh<_i860.IChatInteractor>()),
    );
    return this;
  }
}

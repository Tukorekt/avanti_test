import 'package:avanti_test/common/bloc/base_bloc.dart';
import 'package:avanti_test/common/bloc/base_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef AppBuilder<S> = Widget Function(BuildContext, S);
typedef AppListener<S> = void Function(BuildContext, BaseState<S>);

class AppBlocResolver<E, S> extends StatelessWidget {
  final AppBuilder<S?> _loading;
  final AppBuilder<S> _success;
  final AppBuilder<S?> _failure;
  final AppListener<S?>? _listener;
  final BaseBloc<E, S> _bloc;

  const new({
    super.key,
    required this._loading,
    required this._success,
    required this._failure,
    required this._bloc,
    this._listener,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BaseBloc<E, S>, BaseState<S>>(
      bloc: _bloc,
      builder: (context, state) => switch (state) {
        Loading<S> st => _loading(context, st.data),
        Success<S> st => _success(context, st.data),
        Failure<S> st => _failure(context, st.data),
      },
      listener: _listener ?? (_, _) {},
    );
  }
}

import 'package:avanti_test/common/bloc/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, D>(super.initialState) extends Bloc<E, BaseState<D>>;

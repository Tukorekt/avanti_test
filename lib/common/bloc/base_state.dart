import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
sealed class BaseState<D> with _$BaseState<D> {
  const factory BaseState.loading({D? data, int? timeStamp}) = Loading;
  const factory BaseState.success({required D data, int? timeStamp}) = Success;
  const factory BaseState.failure({D? data, int? timeStamp, String? message}) =
      Failure;
}

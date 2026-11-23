// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseState<D> {

 D? get data; int? get timeStamp;
/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseStateCopyWith<D, BaseState<D>> get copyWith => _$BaseStateCopyWithImpl<D, BaseState<D>>(this as BaseState<D>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BaseState<D>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseState<D>&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.timeStamp, _this.timeStamp) || other.timeStamp == _this.timeStamp));
}


@override
int get hashCode {
  final _this = this as BaseState<D>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.timeStamp);
}

@override
String toString() {
  final _this = this as BaseState<D>;
  return 'BaseState<$D>(data: ${_this.data}, timeStamp: ${_this.timeStamp})';
}


}

/// @nodoc
abstract mixin class $BaseStateCopyWith<D,$Res>  {
  factory $BaseStateCopyWith(BaseState<D> value, $Res Function(BaseState<D>) _then) = _$BaseStateCopyWithImpl;
@useResult
$Res call({
 int? timeStamp
});




}
/// @nodoc
class _$BaseStateCopyWithImpl<D,$Res>
    implements $BaseStateCopyWith<D, $Res> {
  _$BaseStateCopyWithImpl(this._self, this._then);

  final BaseState<D> _self;
  final $Res Function(BaseState<D>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timeStamp = freezed,}) {
  return _then(_self.copyWith(
timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseState].
extension BaseStatePatterns<D> on BaseState<D> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Loading<D> value)?  loading,TResult Function( Success<D> value)?  success,TResult Function( Failure<D> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Loading<D> value)  loading,required TResult Function( Success<D> value)  success,required TResult Function( Failure<D> value)  failure,}){
final _that = this;
switch (_that) {
case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Loading<D> value)?  loading,TResult? Function( Success<D> value)?  success,TResult? Function( Failure<D> value)?  failure,}){
final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( D? data,  int? timeStamp)?  loading,TResult Function( D data,  int? timeStamp)?  success,TResult Function( D? data,  int? timeStamp,  String? message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that.data,_that.timeStamp);case Success() when success != null:
return success(_that.data,_that.timeStamp);case Failure() when failure != null:
return failure(_that.data,_that.timeStamp,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( D? data,  int? timeStamp)  loading,required TResult Function( D data,  int? timeStamp)  success,required TResult Function( D? data,  int? timeStamp,  String? message)  failure,}) {final _that = this;
switch (_that) {
case Loading():
return loading(_that.data,_that.timeStamp);case Success():
return success(_that.data,_that.timeStamp);case Failure():
return failure(_that.data,_that.timeStamp,_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( D? data,  int? timeStamp)?  loading,TResult? Function( D data,  int? timeStamp)?  success,TResult? Function( D? data,  int? timeStamp,  String? message)?  failure,}) {final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that.data,_that.timeStamp);case Success() when success != null:
return success(_that.data,_that.timeStamp);case Failure() when failure != null:
return failure(_that.data,_that.timeStamp,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Loading<D> implements BaseState<D> {
  const Loading({this.data, this.timeStamp});
  

@override final  D? data;
@override final  int? timeStamp;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<D, Loading<D>> get copyWith => _$LoadingCopyWithImpl<D, Loading<D>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<D>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data),timeStamp);
}

@override
String toString() {
    return 'BaseState<$D>.loading(data: $data, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<D,$Res> implements $BaseStateCopyWith<D, $Res> {
  factory $LoadingCopyWith(Loading<D> value, $Res Function(Loading<D>) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 D? data, int? timeStamp
});




}
/// @nodoc
class _$LoadingCopyWithImpl<D,$Res>
    implements $LoadingCopyWith<D, $Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading<D> _self;
  final $Res Function(Loading<D>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? timeStamp = freezed,}) {
  return _then(Loading<D>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as D?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class Success<D> implements BaseState<D> {
  const Success({required this.data, this.timeStamp});
  

@override final  D data;
@override final  int? timeStamp;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<D, Success<D>> get copyWith => _$SuccessCopyWithImpl<D, Success<D>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<D>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data),timeStamp);
}

@override
String toString() {
    return 'BaseState<$D>.success(data: $data, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<D,$Res> implements $BaseStateCopyWith<D, $Res> {
  factory $SuccessCopyWith(Success<D> value, $Res Function(Success<D>) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 D data, int? timeStamp
});




}
/// @nodoc
class _$SuccessCopyWithImpl<D,$Res>
    implements $SuccessCopyWith<D, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<D> _self;
  final $Res Function(Success<D>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? timeStamp = freezed,}) {
  return _then(Success<D>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as D,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class Failure<D> implements BaseState<D> {
  const Failure({this.data, this.timeStamp, this.message});
  

@override final  D? data;
@override final  int? timeStamp;
 final  String? message;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<D, Failure<D>> get copyWith => _$FailureCopyWithImpl<D, Failure<D>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<D>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data),timeStamp,message);
}

@override
String toString() {
    return 'BaseState<$D>.failure(data: $data, timeStamp: $timeStamp, message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<D,$Res> implements $BaseStateCopyWith<D, $Res> {
  factory $FailureCopyWith(Failure<D> value, $Res Function(Failure<D>) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 D? data, int? timeStamp, String? message
});




}
/// @nodoc
class _$FailureCopyWithImpl<D,$Res>
    implements $FailureCopyWith<D, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<D> _self;
  final $Res Function(Failure<D>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? timeStamp = freezed,Object? message = freezed,}) {
  return _then(Failure<D>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as D?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

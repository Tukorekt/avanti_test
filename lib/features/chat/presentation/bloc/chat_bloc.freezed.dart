// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatBlocEvent {

 Id get chatId;
/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatBlocEventCopyWith<ChatBlocEvent> get copyWith => _$ChatBlocEventCopyWithImpl<ChatBlocEvent>(this as ChatBlocEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChatBlocEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatBlocEvent&&(identical(other.chatId, _this.chatId) || other.chatId == _this.chatId));
}


@override
int get hashCode {
  final _this = this as ChatBlocEvent;
  return Object.hash(runtimeType,_this.chatId);
}

@override
String toString() {
  final _this = this as ChatBlocEvent;
  return 'ChatBlocEvent(chatId: ${_this.chatId})';
}


}

/// @nodoc
abstract mixin class $ChatBlocEventCopyWith<$Res>  {
  factory $ChatBlocEventCopyWith(ChatBlocEvent value, $Res Function(ChatBlocEvent) _then) = _$ChatBlocEventCopyWithImpl;
@useResult
$Res call({
 Id chatId
});




}
/// @nodoc
class _$ChatBlocEventCopyWithImpl<$Res>
    implements $ChatBlocEventCopyWith<$Res> {
  _$ChatBlocEventCopyWithImpl(this._self, this._then);

  final ChatBlocEvent _self;
  final $Res Function(ChatBlocEvent) _then;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatBlocEvent].
extension ChatBlocEventPatterns on ChatBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  loadChat,TResult Function( _SendMessage value)?  sendMessage,TResult Function( _ResendMessage value)?  resendMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when loadChat != null:
return loadChat(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _ResendMessage() when resendMessage != null:
return resendMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  loadChat,required TResult Function( _SendMessage value)  sendMessage,required TResult Function( _ResendMessage value)  resendMessage,}){
final _that = this;
switch (_that) {
case _Load():
return loadChat(_that);case _SendMessage():
return sendMessage(_that);case _ResendMessage():
return resendMessage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  loadChat,TResult? Function( _SendMessage value)?  sendMessage,TResult? Function( _ResendMessage value)?  resendMessage,}){
final _that = this;
switch (_that) {
case _Load() when loadChat != null:
return loadChat(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _ResendMessage() when resendMessage != null:
return resendMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Id chatId)?  loadChat,TResult Function( Id chatId,  String message,  Id clientId)?  sendMessage,TResult Function( Id chatId,  MessageModel messageModel)?  resendMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when loadChat != null:
return loadChat(_that.chatId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.chatId,_that.message,_that.clientId);case _ResendMessage() when resendMessage != null:
return resendMessage(_that.chatId,_that.messageModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Id chatId)  loadChat,required TResult Function( Id chatId,  String message,  Id clientId)  sendMessage,required TResult Function( Id chatId,  MessageModel messageModel)  resendMessage,}) {final _that = this;
switch (_that) {
case _Load():
return loadChat(_that.chatId);case _SendMessage():
return sendMessage(_that.chatId,_that.message,_that.clientId);case _ResendMessage():
return resendMessage(_that.chatId,_that.messageModel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Id chatId)?  loadChat,TResult? Function( Id chatId,  String message,  Id clientId)?  sendMessage,TResult? Function( Id chatId,  MessageModel messageModel)?  resendMessage,}) {final _that = this;
switch (_that) {
case _Load() when loadChat != null:
return loadChat(_that.chatId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.chatId,_that.message,_that.clientId);case _ResendMessage() when resendMessage != null:
return resendMessage(_that.chatId,_that.messageModel);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements ChatBlocEvent {
  const _Load(this.chatId);
  

@override final  Id chatId;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCopyWith<_Load> get copyWith => __$LoadCopyWithImpl<_Load>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,chatId);
}

@override
String toString() {
    return 'ChatBlocEvent.loadChat(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$LoadCopyWith<$Res> implements $ChatBlocEventCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) _then) = __$LoadCopyWithImpl;
@override @useResult
$Res call({
 Id chatId
});




}
/// @nodoc
class __$LoadCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(this._self, this._then);

  final _Load _self;
  final $Res Function(_Load) _then;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_Load(
null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,
  ));
}


}

/// @nodoc


class _SendMessage implements ChatBlocEvent {
  const _SendMessage({required this.chatId, required this.message, required this.clientId});
  

@override final  Id chatId;
 final  String message;
 final  Id clientId;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.message, message) || other.message == message)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,chatId,message,clientId);
}

@override
String toString() {
    return 'ChatBlocEvent.sendMessage(chatId: $chatId, message: $message, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $ChatBlocEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@override @useResult
$Res call({
 Id chatId, String message, Id clientId
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? message = null,Object? clientId = null,}) {
  return _then(_SendMessage(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as Id,
  ));
}


}

/// @nodoc


class _ResendMessage implements ChatBlocEvent {
  const _ResendMessage({required this.chatId, required this.messageModel});
  

@override final  Id chatId;
 final  MessageModel messageModel;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendMessageCopyWith<_ResendMessage> get copyWith => __$ResendMessageCopyWithImpl<_ResendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendMessage&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.messageModel, messageModel) || other.messageModel == messageModel));
}


@override
int get hashCode {
    return Object.hash(runtimeType,chatId,messageModel);
}

@override
String toString() {
    return 'ChatBlocEvent.resendMessage(chatId: $chatId, messageModel: $messageModel)';
}


}

/// @nodoc
abstract mixin class _$ResendMessageCopyWith<$Res> implements $ChatBlocEventCopyWith<$Res> {
  factory _$ResendMessageCopyWith(_ResendMessage value, $Res Function(_ResendMessage) _then) = __$ResendMessageCopyWithImpl;
@override @useResult
$Res call({
 Id chatId, MessageModel messageModel
});


$MessageModelCopyWith<$Res> get messageModel;

}
/// @nodoc
class __$ResendMessageCopyWithImpl<$Res>
    implements _$ResendMessageCopyWith<$Res> {
  __$ResendMessageCopyWithImpl(this._self, this._then);

  final _ResendMessage _self;
  final $Res Function(_ResendMessage) _then;

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? messageModel = null,}) {
  return _then(_ResendMessage(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,messageModel: null == messageModel ? _self.messageModel : messageModel // ignore: cast_nullable_to_non_nullable
as MessageModel,
  ));
}

/// Create a copy of ChatBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageModelCopyWith<$Res> get messageModel {
  
  return $MessageModelCopyWith<$Res>(_self.messageModel, (value) {
    return _then(_self.copyWith(messageModel: value));
  });
}
}

/// @nodoc
mixin _$ChatBlocState {

 Map<Id, MessageModel> get messages; Id get chatId;
/// Create a copy of ChatBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatBlocStateCopyWith<ChatBlocState> get copyWith => _$ChatBlocStateCopyWithImpl<ChatBlocState>(this as ChatBlocState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChatBlocState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatBlocState&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.chatId, _this.chatId) || other.chatId == _this.chatId));
}


@override
int get hashCode {
  final _this = this as ChatBlocState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.messages),_this.chatId);
}

@override
String toString() {
  final _this = this as ChatBlocState;
  return 'ChatBlocState(messages: ${_this.messages}, chatId: ${_this.chatId})';
}


}

/// @nodoc
abstract mixin class $ChatBlocStateCopyWith<$Res>  {
  factory $ChatBlocStateCopyWith(ChatBlocState value, $Res Function(ChatBlocState) _then) = _$ChatBlocStateCopyWithImpl;
@useResult
$Res call({
 Map<Id, MessageModel> messages, Id chatId
});




}
/// @nodoc
class _$ChatBlocStateCopyWithImpl<$Res>
    implements $ChatBlocStateCopyWith<$Res> {
  _$ChatBlocStateCopyWithImpl(this._self, this._then);

  final ChatBlocState _self;
  final $Res Function(ChatBlocState) _then;

/// Create a copy of ChatBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? chatId = null,}) {
  return _then(ChatBlocState(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as Map<Id, MessageModel>,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatBlocState].
extension ChatBlocStatePatterns on ChatBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatBlocState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatBlocState value)  $default,){
final _that = this;
switch (_that) {
case _ChatBlocState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatBlocState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<Id, MessageModel> messages,  Id chatId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatBlocState() when $default != null:
return $default(_that.messages,_that.chatId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<Id, MessageModel> messages,  Id chatId)  $default,) {final _that = this;
switch (_that) {
case _ChatBlocState():
return $default(_that.messages,_that.chatId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<Id, MessageModel> messages,  Id chatId)?  $default,) {final _that = this;
switch (_that) {
case _ChatBlocState() when $default != null:
return $default(_that.messages,_that.chatId);case _:
  return null;

}
}

}

/// @nodoc


class _ChatBlocState implements ChatBlocState {
  const _ChatBlocState({required  Map<Id, MessageModel> messages, required this.chatId}): _messages = messages;
  

 final  Map<Id, MessageModel> _messages;
@override Map<Id, MessageModel> get messages {
  if (_messages is EqualUnmodifiableMapView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_messages);
}

@override final  Id chatId;

/// Create a copy of ChatBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatBlocStateCopyWith<_ChatBlocState> get copyWith => __$ChatBlocStateCopyWithImpl<_ChatBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatBlocState&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),chatId);
}

@override
String toString() {
    return 'ChatBlocState(messages: $messages, chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$ChatBlocStateCopyWith<$Res> implements $ChatBlocStateCopyWith<$Res> {
  factory _$ChatBlocStateCopyWith(_ChatBlocState value, $Res Function(_ChatBlocState) _then) = __$ChatBlocStateCopyWithImpl;
@override @useResult
$Res call({
 Map<Id, MessageModel> messages, Id chatId
});




}
/// @nodoc
class __$ChatBlocStateCopyWithImpl<$Res>
    implements _$ChatBlocStateCopyWith<$Res> {
  __$ChatBlocStateCopyWithImpl(this._self, this._then);

  final _ChatBlocState _self;
  final $Res Function(_ChatBlocState) _then;

/// Create a copy of ChatBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? chatId = null,}) {
  return _then(_ChatBlocState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as Map<Id, MessageModel>,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Id,
  ));
}


}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _value.copyWith(
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionEndedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SessionEndedFailureImplCopyWith(
    _$SessionEndedFailureImpl value,
    $Res Function(_$SessionEndedFailureImpl) then,
  ) = __$$SessionEndedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SessionEndedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SessionEndedFailureImpl>
    implements _$$SessionEndedFailureImplCopyWith<$Res> {
  __$$SessionEndedFailureImplCopyWithImpl(
    _$SessionEndedFailureImpl _value,
    $Res Function(_$SessionEndedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$SessionEndedFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$SessionEndedFailureImpl implements SessionEndedFailure {
  const _$SessionEndedFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.sessionEnded(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEndedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionEndedFailureImplCopyWith<_$SessionEndedFailureImpl> get copyWith =>
      __$$SessionEndedFailureImplCopyWithImpl<_$SessionEndedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return sessionEnded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return sessionEnded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return sessionEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return sessionEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(this);
    }
    return orElse();
  }
}

abstract class SessionEndedFailure implements Failure {
  const factory SessionEndedFailure({final String? message}) =
      _$SessionEndedFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionEndedFailureImplCopyWith<_$SessionEndedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidInputFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$InvalidInputFailureImplCopyWith(
    _$InvalidInputFailureImpl value,
    $Res Function(_$InvalidInputFailureImpl) then,
  ) = __$$InvalidInputFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidInputFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidInputFailureImpl>
    implements _$$InvalidInputFailureImplCopyWith<$Res> {
  __$$InvalidInputFailureImplCopyWithImpl(
    _$InvalidInputFailureImpl _value,
    $Res Function(_$InvalidInputFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$InvalidInputFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$InvalidInputFailureImpl implements InvalidInputFailure {
  const _$InvalidInputFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.invalidInput(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      __$$InvalidInputFailureImplCopyWithImpl<_$InvalidInputFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return invalidInput(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return invalidInput?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return invalidInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return invalidInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure implements Failure {
  const factory InvalidInputFailure({final String? message}) =
      _$InvalidInputFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionNotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SessionNotFoundFailureImplCopyWith(
    _$SessionNotFoundFailureImpl value,
    $Res Function(_$SessionNotFoundFailureImpl) then,
  ) = __$$SessionNotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SessionNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SessionNotFoundFailureImpl>
    implements _$$SessionNotFoundFailureImplCopyWith<$Res> {
  __$$SessionNotFoundFailureImplCopyWithImpl(
    _$SessionNotFoundFailureImpl _value,
    $Res Function(_$SessionNotFoundFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$SessionNotFoundFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$SessionNotFoundFailureImpl implements SessionNotFoundFailure {
  const _$SessionNotFoundFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.sessionNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionNotFoundFailureImplCopyWith<_$SessionNotFoundFailureImpl>
  get copyWith =>
      __$$SessionNotFoundFailureImplCopyWithImpl<_$SessionNotFoundFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return sessionNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return sessionNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (sessionNotFound != null) {
      return sessionNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return sessionNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return sessionNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (sessionNotFound != null) {
      return sessionNotFound(this);
    }
    return orElse();
  }
}

abstract class SessionNotFoundFailure implements Failure {
  const factory SessionNotFoundFailure({final String? message}) =
      _$SessionNotFoundFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionNotFoundFailureImplCopyWith<_$SessionNotFoundFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChartNotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ChartNotFoundFailureImplCopyWith(
    _$ChartNotFoundFailureImpl value,
    $Res Function(_$ChartNotFoundFailureImpl) then,
  ) = __$$ChartNotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ChartNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ChartNotFoundFailureImpl>
    implements _$$ChartNotFoundFailureImplCopyWith<$Res> {
  __$$ChartNotFoundFailureImplCopyWithImpl(
    _$ChartNotFoundFailureImpl _value,
    $Res Function(_$ChartNotFoundFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$ChartNotFoundFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChartNotFoundFailureImpl implements ChartNotFoundFailure {
  const _$ChartNotFoundFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.chartNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartNotFoundFailureImplCopyWith<_$ChartNotFoundFailureImpl>
  get copyWith =>
      __$$ChartNotFoundFailureImplCopyWithImpl<_$ChartNotFoundFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return chartNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return chartNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (chartNotFound != null) {
      return chartNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return chartNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return chartNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (chartNotFound != null) {
      return chartNotFound(this);
    }
    return orElse();
  }
}

abstract class ChartNotFoundFailure implements Failure {
  const factory ChartNotFoundFailure({final String? message}) =
      _$ChartNotFoundFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartNotFoundFailureImplCopyWith<_$ChartNotFoundFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EngineFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$EngineFailureImplCopyWith(
    _$EngineFailureImpl value,
    $Res Function(_$EngineFailureImpl) then,
  ) = __$$EngineFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EngineFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EngineFailureImpl>
    implements _$$EngineFailureImplCopyWith<$Res> {
  __$$EngineFailureImplCopyWithImpl(
    _$EngineFailureImpl _value,
    $Res Function(_$EngineFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$EngineFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$EngineFailureImpl implements EngineFailure {
  const _$EngineFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.engine(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineFailureImplCopyWith<_$EngineFailureImpl> get copyWith =>
      __$$EngineFailureImplCopyWithImpl<_$EngineFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return engine(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return engine?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (engine != null) {
      return engine(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return engine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return engine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (engine != null) {
      return engine(this);
    }
    return orElse();
  }
}

abstract class EngineFailure implements Failure {
  const factory EngineFailure({final String? message}) = _$EngineFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EngineFailureImplCopyWith<_$EngineFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(
    _$ConnectionFailureImpl value,
    $Res Function(_$ConnectionFailureImpl) then,
  ) = __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(
    _$ConnectionFailureImpl _value,
    $Res Function(_$ConnectionFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$ConnectionFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ConnectionFailureImpl implements ConnectionFailure {
  const _$ConnectionFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.connection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return connection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return connection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  const factory ConnectionFailure({final String? message}) =
      _$ConnectionFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(
    _$UnknownFailureImpl value,
    $Res Function(_$UnknownFailureImpl) then,
  ) = __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
    _$UnknownFailureImpl _value,
    $Res Function(_$UnknownFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$UnknownFailureImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sessionEnded,
    required TResult Function(String? message) invalidInput,
    required TResult Function(String? message) sessionNotFound,
    required TResult Function(String? message) chartNotFound,
    required TResult Function(String? message) engine,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? sessionEnded,
    TResult? Function(String? message)? invalidInput,
    TResult? Function(String? message)? sessionNotFound,
    TResult? Function(String? message)? chartNotFound,
    TResult? Function(String? message)? engine,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sessionEnded,
    TResult Function(String? message)? invalidInput,
    TResult Function(String? message)? sessionNotFound,
    TResult Function(String? message)? chartNotFound,
    TResult Function(String? message)? engine,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionEndedFailure value) sessionEnded,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(SessionNotFoundFailure value) sessionNotFound,
    required TResult Function(ChartNotFoundFailure value) chartNotFound,
    required TResult Function(EngineFailure value) engine,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionEndedFailure value)? sessionEnded,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult? Function(ChartNotFoundFailure value)? chartNotFound,
    TResult? Function(EngineFailure value)? engine,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionEndedFailure value)? sessionEnded,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(SessionNotFoundFailure value)? sessionNotFound,
    TResult Function(ChartNotFoundFailure value)? chartNotFound,
    TResult Function(EngineFailure value)? engine,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure({final String? message}) = _$UnknownFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

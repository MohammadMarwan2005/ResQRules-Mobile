// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChartsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Chart> charts) loaded,
    required TResult Function(Failure failure) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Chart> charts)? loaded,
    TResult? Function(Failure failure)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Chart> charts)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartsInitial value) initial,
    required TResult Function(ChartsLoading value) loading,
    required TResult Function(ChartsLoaded value) loaded,
    required TResult Function(ChartsError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartsInitial value)? initial,
    TResult? Function(ChartsLoading value)? loading,
    TResult? Function(ChartsLoaded value)? loaded,
    TResult? Function(ChartsError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartsInitial value)? initial,
    TResult Function(ChartsLoading value)? loading,
    TResult Function(ChartsLoaded value)? loaded,
    TResult Function(ChartsError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartsStateCopyWith<$Res> {
  factory $ChartsStateCopyWith(
    ChartsState value,
    $Res Function(ChartsState) then,
  ) = _$ChartsStateCopyWithImpl<$Res, ChartsState>;
}

/// @nodoc
class _$ChartsStateCopyWithImpl<$Res, $Val extends ChartsState>
    implements $ChartsStateCopyWith<$Res> {
  _$ChartsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChartsInitialImplCopyWith<$Res> {
  factory _$$ChartsInitialImplCopyWith(
    _$ChartsInitialImpl value,
    $Res Function(_$ChartsInitialImpl) then,
  ) = __$$ChartsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartsInitialImplCopyWithImpl<$Res>
    extends _$ChartsStateCopyWithImpl<$Res, _$ChartsInitialImpl>
    implements _$$ChartsInitialImplCopyWith<$Res> {
  __$$ChartsInitialImplCopyWithImpl(
    _$ChartsInitialImpl _value,
    $Res Function(_$ChartsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChartsInitialImpl implements ChartsInitial {
  const _$ChartsInitialImpl();

  @override
  String toString() {
    return 'ChartsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Chart> charts) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Chart> charts)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Chart> charts)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartsInitial value) initial,
    required TResult Function(ChartsLoading value) loading,
    required TResult Function(ChartsLoaded value) loaded,
    required TResult Function(ChartsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartsInitial value)? initial,
    TResult? Function(ChartsLoading value)? loading,
    TResult? Function(ChartsLoaded value)? loaded,
    TResult? Function(ChartsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartsInitial value)? initial,
    TResult Function(ChartsLoading value)? loading,
    TResult Function(ChartsLoaded value)? loaded,
    TResult Function(ChartsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChartsInitial implements ChartsState {
  const factory ChartsInitial() = _$ChartsInitialImpl;
}

/// @nodoc
abstract class _$$ChartsLoadingImplCopyWith<$Res> {
  factory _$$ChartsLoadingImplCopyWith(
    _$ChartsLoadingImpl value,
    $Res Function(_$ChartsLoadingImpl) then,
  ) = __$$ChartsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartsLoadingImplCopyWithImpl<$Res>
    extends _$ChartsStateCopyWithImpl<$Res, _$ChartsLoadingImpl>
    implements _$$ChartsLoadingImplCopyWith<$Res> {
  __$$ChartsLoadingImplCopyWithImpl(
    _$ChartsLoadingImpl _value,
    $Res Function(_$ChartsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChartsLoadingImpl implements ChartsLoading {
  const _$ChartsLoadingImpl();

  @override
  String toString() {
    return 'ChartsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Chart> charts) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Chart> charts)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Chart> charts)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartsInitial value) initial,
    required TResult Function(ChartsLoading value) loading,
    required TResult Function(ChartsLoaded value) loaded,
    required TResult Function(ChartsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartsInitial value)? initial,
    TResult? Function(ChartsLoading value)? loading,
    TResult? Function(ChartsLoaded value)? loaded,
    TResult? Function(ChartsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartsInitial value)? initial,
    TResult Function(ChartsLoading value)? loading,
    TResult Function(ChartsLoaded value)? loaded,
    TResult Function(ChartsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChartsLoading implements ChartsState {
  const factory ChartsLoading() = _$ChartsLoadingImpl;
}

/// @nodoc
abstract class _$$ChartsLoadedImplCopyWith<$Res> {
  factory _$$ChartsLoadedImplCopyWith(
    _$ChartsLoadedImpl value,
    $Res Function(_$ChartsLoadedImpl) then,
  ) = __$$ChartsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Chart> charts});
}

/// @nodoc
class __$$ChartsLoadedImplCopyWithImpl<$Res>
    extends _$ChartsStateCopyWithImpl<$Res, _$ChartsLoadedImpl>
    implements _$$ChartsLoadedImplCopyWith<$Res> {
  __$$ChartsLoadedImplCopyWithImpl(
    _$ChartsLoadedImpl _value,
    $Res Function(_$ChartsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? charts = null}) {
    return _then(
      _$ChartsLoadedImpl(
        null == charts
            ? _value._charts
            : charts // ignore: cast_nullable_to_non_nullable
                as List<Chart>,
      ),
    );
  }
}

/// @nodoc

class _$ChartsLoadedImpl implements ChartsLoaded {
  const _$ChartsLoadedImpl(final List<Chart> charts) : _charts = charts;

  final List<Chart> _charts;
  @override
  List<Chart> get charts {
    if (_charts is EqualUnmodifiableListView) return _charts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charts);
  }

  @override
  String toString() {
    return 'ChartsState.loaded(charts: $charts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartsLoadedImpl &&
            const DeepCollectionEquality().equals(other._charts, _charts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_charts));

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartsLoadedImplCopyWith<_$ChartsLoadedImpl> get copyWith =>
      __$$ChartsLoadedImplCopyWithImpl<_$ChartsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Chart> charts) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(charts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Chart> charts)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(charts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Chart> charts)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(charts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartsInitial value) initial,
    required TResult Function(ChartsLoading value) loading,
    required TResult Function(ChartsLoaded value) loaded,
    required TResult Function(ChartsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartsInitial value)? initial,
    TResult? Function(ChartsLoading value)? loading,
    TResult? Function(ChartsLoaded value)? loaded,
    TResult? Function(ChartsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartsInitial value)? initial,
    TResult Function(ChartsLoading value)? loading,
    TResult Function(ChartsLoaded value)? loaded,
    TResult Function(ChartsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChartsLoaded implements ChartsState {
  const factory ChartsLoaded(final List<Chart> charts) = _$ChartsLoadedImpl;

  List<Chart> get charts;

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartsLoadedImplCopyWith<_$ChartsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChartsErrorImplCopyWith<$Res> {
  factory _$$ChartsErrorImplCopyWith(
    _$ChartsErrorImpl value,
    $Res Function(_$ChartsErrorImpl) then,
  ) = __$$ChartsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ChartsErrorImplCopyWithImpl<$Res>
    extends _$ChartsStateCopyWithImpl<$Res, _$ChartsErrorImpl>
    implements _$$ChartsErrorImplCopyWith<$Res> {
  __$$ChartsErrorImplCopyWithImpl(
    _$ChartsErrorImpl _value,
    $Res Function(_$ChartsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$ChartsErrorImpl(
        null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                as Failure,
      ),
    );
  }

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ChartsErrorImpl implements ChartsError {
  const _$ChartsErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChartsState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartsErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartsErrorImplCopyWith<_$ChartsErrorImpl> get copyWith =>
      __$$ChartsErrorImplCopyWithImpl<_$ChartsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Chart> charts) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Chart> charts)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Chart> charts)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartsInitial value) initial,
    required TResult Function(ChartsLoading value) loading,
    required TResult Function(ChartsLoaded value) loaded,
    required TResult Function(ChartsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartsInitial value)? initial,
    TResult? Function(ChartsLoading value)? loading,
    TResult? Function(ChartsLoaded value)? loaded,
    TResult? Function(ChartsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartsInitial value)? initial,
    TResult Function(ChartsLoading value)? loading,
    TResult Function(ChartsLoaded value)? loaded,
    TResult Function(ChartsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChartsError implements ChartsState {
  const factory ChartsError(final Failure failure) = _$ChartsErrorImpl;

  Failure get failure;

  /// Create a copy of ChartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartsErrorImplCopyWith<_$ChartsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

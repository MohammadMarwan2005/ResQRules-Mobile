// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'override_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OverrideOutcome {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BilingualText chartTitle, int salience) jump,
    required TResult Function(BilingualText chartTitle) guard,
    required TResult Function() silent,
    required TResult Function() none,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BilingualText chartTitle, int salience)? jump,
    TResult? Function(BilingualText chartTitle)? guard,
    TResult? Function()? silent,
    TResult? Function()? none,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BilingualText chartTitle, int salience)? jump,
    TResult Function(BilingualText chartTitle)? guard,
    TResult Function()? silent,
    TResult Function()? none,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverrideJump value) jump,
    required TResult Function(OverrideGuard value) guard,
    required TResult Function(OverrideSilent value) silent,
    required TResult Function(OverrideNone value) none,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverrideJump value)? jump,
    TResult? Function(OverrideGuard value)? guard,
    TResult? Function(OverrideSilent value)? silent,
    TResult? Function(OverrideNone value)? none,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverrideJump value)? jump,
    TResult Function(OverrideGuard value)? guard,
    TResult Function(OverrideSilent value)? silent,
    TResult Function(OverrideNone value)? none,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverrideOutcomeCopyWith<$Res> {
  factory $OverrideOutcomeCopyWith(
    OverrideOutcome value,
    $Res Function(OverrideOutcome) then,
  ) = _$OverrideOutcomeCopyWithImpl<$Res, OverrideOutcome>;
}

/// @nodoc
class _$OverrideOutcomeCopyWithImpl<$Res, $Val extends OverrideOutcome>
    implements $OverrideOutcomeCopyWith<$Res> {
  _$OverrideOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OverrideJumpImplCopyWith<$Res> {
  factory _$$OverrideJumpImplCopyWith(
    _$OverrideJumpImpl value,
    $Res Function(_$OverrideJumpImpl) then,
  ) = __$$OverrideJumpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BilingualText chartTitle, int salience});

  $BilingualTextCopyWith<$Res> get chartTitle;
}

/// @nodoc
class __$$OverrideJumpImplCopyWithImpl<$Res>
    extends _$OverrideOutcomeCopyWithImpl<$Res, _$OverrideJumpImpl>
    implements _$$OverrideJumpImplCopyWith<$Res> {
  __$$OverrideJumpImplCopyWithImpl(
    _$OverrideJumpImpl _value,
    $Res Function(_$OverrideJumpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chartTitle = null, Object? salience = null}) {
    return _then(
      _$OverrideJumpImpl(
        chartTitle:
            null == chartTitle
                ? _value.chartTitle
                : chartTitle // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        salience:
            null == salience
                ? _value.salience
                : salience // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get chartTitle {
    return $BilingualTextCopyWith<$Res>(_value.chartTitle, (value) {
      return _then(_value.copyWith(chartTitle: value));
    });
  }
}

/// @nodoc

class _$OverrideJumpImpl implements OverrideJump {
  const _$OverrideJumpImpl({required this.chartTitle, required this.salience});

  @override
  final BilingualText chartTitle;
  @override
  final int salience;

  @override
  String toString() {
    return 'OverrideOutcome.jump(chartTitle: $chartTitle, salience: $salience)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverrideJumpImpl &&
            (identical(other.chartTitle, chartTitle) ||
                other.chartTitle == chartTitle) &&
            (identical(other.salience, salience) ||
                other.salience == salience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chartTitle, salience);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverrideJumpImplCopyWith<_$OverrideJumpImpl> get copyWith =>
      __$$OverrideJumpImplCopyWithImpl<_$OverrideJumpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BilingualText chartTitle, int salience) jump,
    required TResult Function(BilingualText chartTitle) guard,
    required TResult Function() silent,
    required TResult Function() none,
  }) {
    return jump(chartTitle, salience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BilingualText chartTitle, int salience)? jump,
    TResult? Function(BilingualText chartTitle)? guard,
    TResult? Function()? silent,
    TResult? Function()? none,
  }) {
    return jump?.call(chartTitle, salience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BilingualText chartTitle, int salience)? jump,
    TResult Function(BilingualText chartTitle)? guard,
    TResult Function()? silent,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (jump != null) {
      return jump(chartTitle, salience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverrideJump value) jump,
    required TResult Function(OverrideGuard value) guard,
    required TResult Function(OverrideSilent value) silent,
    required TResult Function(OverrideNone value) none,
  }) {
    return jump(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverrideJump value)? jump,
    TResult? Function(OverrideGuard value)? guard,
    TResult? Function(OverrideSilent value)? silent,
    TResult? Function(OverrideNone value)? none,
  }) {
    return jump?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverrideJump value)? jump,
    TResult Function(OverrideGuard value)? guard,
    TResult Function(OverrideSilent value)? silent,
    TResult Function(OverrideNone value)? none,
    required TResult orElse(),
  }) {
    if (jump != null) {
      return jump(this);
    }
    return orElse();
  }
}

abstract class OverrideJump implements OverrideOutcome {
  const factory OverrideJump({
    required final BilingualText chartTitle,
    required final int salience,
  }) = _$OverrideJumpImpl;

  BilingualText get chartTitle;
  int get salience;

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverrideJumpImplCopyWith<_$OverrideJumpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OverrideGuardImplCopyWith<$Res> {
  factory _$$OverrideGuardImplCopyWith(
    _$OverrideGuardImpl value,
    $Res Function(_$OverrideGuardImpl) then,
  ) = __$$OverrideGuardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BilingualText chartTitle});

  $BilingualTextCopyWith<$Res> get chartTitle;
}

/// @nodoc
class __$$OverrideGuardImplCopyWithImpl<$Res>
    extends _$OverrideOutcomeCopyWithImpl<$Res, _$OverrideGuardImpl>
    implements _$$OverrideGuardImplCopyWith<$Res> {
  __$$OverrideGuardImplCopyWithImpl(
    _$OverrideGuardImpl _value,
    $Res Function(_$OverrideGuardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chartTitle = null}) {
    return _then(
      _$OverrideGuardImpl(
        chartTitle:
            null == chartTitle
                ? _value.chartTitle
                : chartTitle // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
      ),
    );
  }

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get chartTitle {
    return $BilingualTextCopyWith<$Res>(_value.chartTitle, (value) {
      return _then(_value.copyWith(chartTitle: value));
    });
  }
}

/// @nodoc

class _$OverrideGuardImpl implements OverrideGuard {
  const _$OverrideGuardImpl({required this.chartTitle});

  @override
  final BilingualText chartTitle;

  @override
  String toString() {
    return 'OverrideOutcome.guard(chartTitle: $chartTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverrideGuardImpl &&
            (identical(other.chartTitle, chartTitle) ||
                other.chartTitle == chartTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chartTitle);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverrideGuardImplCopyWith<_$OverrideGuardImpl> get copyWith =>
      __$$OverrideGuardImplCopyWithImpl<_$OverrideGuardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BilingualText chartTitle, int salience) jump,
    required TResult Function(BilingualText chartTitle) guard,
    required TResult Function() silent,
    required TResult Function() none,
  }) {
    return guard(chartTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BilingualText chartTitle, int salience)? jump,
    TResult? Function(BilingualText chartTitle)? guard,
    TResult? Function()? silent,
    TResult? Function()? none,
  }) {
    return guard?.call(chartTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BilingualText chartTitle, int salience)? jump,
    TResult Function(BilingualText chartTitle)? guard,
    TResult Function()? silent,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (guard != null) {
      return guard(chartTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverrideJump value) jump,
    required TResult Function(OverrideGuard value) guard,
    required TResult Function(OverrideSilent value) silent,
    required TResult Function(OverrideNone value) none,
  }) {
    return guard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverrideJump value)? jump,
    TResult? Function(OverrideGuard value)? guard,
    TResult? Function(OverrideSilent value)? silent,
    TResult? Function(OverrideNone value)? none,
  }) {
    return guard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverrideJump value)? jump,
    TResult Function(OverrideGuard value)? guard,
    TResult Function(OverrideSilent value)? silent,
    TResult Function(OverrideNone value)? none,
    required TResult orElse(),
  }) {
    if (guard != null) {
      return guard(this);
    }
    return orElse();
  }
}

abstract class OverrideGuard implements OverrideOutcome {
  const factory OverrideGuard({required final BilingualText chartTitle}) =
      _$OverrideGuardImpl;

  BilingualText get chartTitle;

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverrideGuardImplCopyWith<_$OverrideGuardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OverrideSilentImplCopyWith<$Res> {
  factory _$$OverrideSilentImplCopyWith(
    _$OverrideSilentImpl value,
    $Res Function(_$OverrideSilentImpl) then,
  ) = __$$OverrideSilentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverrideSilentImplCopyWithImpl<$Res>
    extends _$OverrideOutcomeCopyWithImpl<$Res, _$OverrideSilentImpl>
    implements _$$OverrideSilentImplCopyWith<$Res> {
  __$$OverrideSilentImplCopyWithImpl(
    _$OverrideSilentImpl _value,
    $Res Function(_$OverrideSilentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OverrideSilentImpl implements OverrideSilent {
  const _$OverrideSilentImpl();

  @override
  String toString() {
    return 'OverrideOutcome.silent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OverrideSilentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BilingualText chartTitle, int salience) jump,
    required TResult Function(BilingualText chartTitle) guard,
    required TResult Function() silent,
    required TResult Function() none,
  }) {
    return silent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BilingualText chartTitle, int salience)? jump,
    TResult? Function(BilingualText chartTitle)? guard,
    TResult? Function()? silent,
    TResult? Function()? none,
  }) {
    return silent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BilingualText chartTitle, int salience)? jump,
    TResult Function(BilingualText chartTitle)? guard,
    TResult Function()? silent,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverrideJump value) jump,
    required TResult Function(OverrideGuard value) guard,
    required TResult Function(OverrideSilent value) silent,
    required TResult Function(OverrideNone value) none,
  }) {
    return silent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverrideJump value)? jump,
    TResult? Function(OverrideGuard value)? guard,
    TResult? Function(OverrideSilent value)? silent,
    TResult? Function(OverrideNone value)? none,
  }) {
    return silent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverrideJump value)? jump,
    TResult Function(OverrideGuard value)? guard,
    TResult Function(OverrideSilent value)? silent,
    TResult Function(OverrideNone value)? none,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent(this);
    }
    return orElse();
  }
}

abstract class OverrideSilent implements OverrideOutcome {
  const factory OverrideSilent() = _$OverrideSilentImpl;
}

/// @nodoc
abstract class _$$OverrideNoneImplCopyWith<$Res> {
  factory _$$OverrideNoneImplCopyWith(
    _$OverrideNoneImpl value,
    $Res Function(_$OverrideNoneImpl) then,
  ) = __$$OverrideNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverrideNoneImplCopyWithImpl<$Res>
    extends _$OverrideOutcomeCopyWithImpl<$Res, _$OverrideNoneImpl>
    implements _$$OverrideNoneImplCopyWith<$Res> {
  __$$OverrideNoneImplCopyWithImpl(
    _$OverrideNoneImpl _value,
    $Res Function(_$OverrideNoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverrideOutcome
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OverrideNoneImpl implements OverrideNone {
  const _$OverrideNoneImpl();

  @override
  String toString() {
    return 'OverrideOutcome.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OverrideNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BilingualText chartTitle, int salience) jump,
    required TResult Function(BilingualText chartTitle) guard,
    required TResult Function() silent,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BilingualText chartTitle, int salience)? jump,
    TResult? Function(BilingualText chartTitle)? guard,
    TResult? Function()? silent,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BilingualText chartTitle, int salience)? jump,
    TResult Function(BilingualText chartTitle)? guard,
    TResult Function()? silent,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverrideJump value) jump,
    required TResult Function(OverrideGuard value) guard,
    required TResult Function(OverrideSilent value) silent,
    required TResult Function(OverrideNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverrideJump value)? jump,
    TResult? Function(OverrideGuard value)? guard,
    TResult? Function(OverrideSilent value)? silent,
    TResult? Function(OverrideNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverrideJump value)? jump,
    TResult Function(OverrideGuard value)? guard,
    TResult Function(OverrideSilent value)? silent,
    TResult Function(OverrideNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class OverrideNone implements OverrideOutcome {
  const factory OverrideNone() = _$OverrideNoneImpl;
}

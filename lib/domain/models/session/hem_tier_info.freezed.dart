// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hem_tier_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HemTierInfo {
  int get current => throw _privateConstructorUsedError;
  int get maxTier => throw _privateConstructorUsedError;
  bool get terminal => throw _privateConstructorUsedError;
  BilingualText get intervention => throw _privateConstructorUsedError;

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HemTierInfoCopyWith<HemTierInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HemTierInfoCopyWith<$Res> {
  factory $HemTierInfoCopyWith(
    HemTierInfo value,
    $Res Function(HemTierInfo) then,
  ) = _$HemTierInfoCopyWithImpl<$Res, HemTierInfo>;
  @useResult
  $Res call({
    int current,
    int maxTier,
    bool terminal,
    BilingualText intervention,
  });

  $BilingualTextCopyWith<$Res> get intervention;
}

/// @nodoc
class _$HemTierInfoCopyWithImpl<$Res, $Val extends HemTierInfo>
    implements $HemTierInfoCopyWith<$Res> {
  _$HemTierInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? maxTier = null,
    Object? terminal = null,
    Object? intervention = null,
  }) {
    return _then(
      _value.copyWith(
            current:
                null == current
                    ? _value.current
                    : current // ignore: cast_nullable_to_non_nullable
                        as int,
            maxTier:
                null == maxTier
                    ? _value.maxTier
                    : maxTier // ignore: cast_nullable_to_non_nullable
                        as int,
            terminal:
                null == terminal
                    ? _value.terminal
                    : terminal // ignore: cast_nullable_to_non_nullable
                        as bool,
            intervention:
                null == intervention
                    ? _value.intervention
                    : intervention // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
          )
          as $Val,
    );
  }

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get intervention {
    return $BilingualTextCopyWith<$Res>(_value.intervention, (value) {
      return _then(_value.copyWith(intervention: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HemTierInfoImplCopyWith<$Res>
    implements $HemTierInfoCopyWith<$Res> {
  factory _$$HemTierInfoImplCopyWith(
    _$HemTierInfoImpl value,
    $Res Function(_$HemTierInfoImpl) then,
  ) = __$$HemTierInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int current,
    int maxTier,
    bool terminal,
    BilingualText intervention,
  });

  @override
  $BilingualTextCopyWith<$Res> get intervention;
}

/// @nodoc
class __$$HemTierInfoImplCopyWithImpl<$Res>
    extends _$HemTierInfoCopyWithImpl<$Res, _$HemTierInfoImpl>
    implements _$$HemTierInfoImplCopyWith<$Res> {
  __$$HemTierInfoImplCopyWithImpl(
    _$HemTierInfoImpl _value,
    $Res Function(_$HemTierInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? maxTier = null,
    Object? terminal = null,
    Object? intervention = null,
  }) {
    return _then(
      _$HemTierInfoImpl(
        current:
            null == current
                ? _value.current
                : current // ignore: cast_nullable_to_non_nullable
                    as int,
        maxTier:
            null == maxTier
                ? _value.maxTier
                : maxTier // ignore: cast_nullable_to_non_nullable
                    as int,
        terminal:
            null == terminal
                ? _value.terminal
                : terminal // ignore: cast_nullable_to_non_nullable
                    as bool,
        intervention:
            null == intervention
                ? _value.intervention
                : intervention // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
      ),
    );
  }
}

/// @nodoc

class _$HemTierInfoImpl implements _HemTierInfo {
  const _$HemTierInfoImpl({
    required this.current,
    required this.maxTier,
    required this.terminal,
    required this.intervention,
  });

  @override
  final int current;
  @override
  final int maxTier;
  @override
  final bool terminal;
  @override
  final BilingualText intervention;

  @override
  String toString() {
    return 'HemTierInfo(current: $current, maxTier: $maxTier, terminal: $terminal, intervention: $intervention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HemTierInfoImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.maxTier, maxTier) || other.maxTier == maxTier) &&
            (identical(other.terminal, terminal) ||
                other.terminal == terminal) &&
            (identical(other.intervention, intervention) ||
                other.intervention == intervention));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, current, maxTier, terminal, intervention);

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HemTierInfoImplCopyWith<_$HemTierInfoImpl> get copyWith =>
      __$$HemTierInfoImplCopyWithImpl<_$HemTierInfoImpl>(this, _$identity);
}

abstract class _HemTierInfo implements HemTierInfo {
  const factory _HemTierInfo({
    required final int current,
    required final int maxTier,
    required final bool terminal,
    required final BilingualText intervention,
  }) = _$HemTierInfoImpl;

  @override
  int get current;
  @override
  int get maxTier;
  @override
  bool get terminal;
  @override
  BilingualText get intervention;

  /// Create a copy of HemTierInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HemTierInfoImplCopyWith<_$HemTierInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

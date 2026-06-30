// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cf_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CfConfig {
  BilingualText get prompt => throw _privateConstructorUsedError;
  List<CfChoice> get choices => throw _privateConstructorUsedError;
  double get threshold => throw _privateConstructorUsedError;

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CfConfigCopyWith<CfConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CfConfigCopyWith<$Res> {
  factory $CfConfigCopyWith(CfConfig value, $Res Function(CfConfig) then) =
      _$CfConfigCopyWithImpl<$Res, CfConfig>;
  @useResult
  $Res call({BilingualText prompt, List<CfChoice> choices, double threshold});

  $BilingualTextCopyWith<$Res> get prompt;
}

/// @nodoc
class _$CfConfigCopyWithImpl<$Res, $Val extends CfConfig>
    implements $CfConfigCopyWith<$Res> {
  _$CfConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? choices = null,
    Object? threshold = null,
  }) {
    return _then(
      _value.copyWith(
            prompt:
                null == prompt
                    ? _value.prompt
                    : prompt // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
            choices:
                null == choices
                    ? _value.choices
                    : choices // ignore: cast_nullable_to_non_nullable
                        as List<CfChoice>,
            threshold:
                null == threshold
                    ? _value.threshold
                    : threshold // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get prompt {
    return $BilingualTextCopyWith<$Res>(_value.prompt, (value) {
      return _then(_value.copyWith(prompt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CfConfigImplCopyWith<$Res>
    implements $CfConfigCopyWith<$Res> {
  factory _$$CfConfigImplCopyWith(
    _$CfConfigImpl value,
    $Res Function(_$CfConfigImpl) then,
  ) = __$$CfConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BilingualText prompt, List<CfChoice> choices, double threshold});

  @override
  $BilingualTextCopyWith<$Res> get prompt;
}

/// @nodoc
class __$$CfConfigImplCopyWithImpl<$Res>
    extends _$CfConfigCopyWithImpl<$Res, _$CfConfigImpl>
    implements _$$CfConfigImplCopyWith<$Res> {
  __$$CfConfigImplCopyWithImpl(
    _$CfConfigImpl _value,
    $Res Function(_$CfConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? choices = null,
    Object? threshold = null,
  }) {
    return _then(
      _$CfConfigImpl(
        prompt:
            null == prompt
                ? _value.prompt
                : prompt // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        choices:
            null == choices
                ? _value._choices
                : choices // ignore: cast_nullable_to_non_nullable
                    as List<CfChoice>,
        threshold:
            null == threshold
                ? _value.threshold
                : threshold // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$CfConfigImpl implements _CfConfig {
  const _$CfConfigImpl({
    required this.prompt,
    required final List<CfChoice> choices,
    required this.threshold,
  }) : _choices = choices;

  @override
  final BilingualText prompt;
  final List<CfChoice> _choices;
  @override
  List<CfChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final double threshold;

  @override
  String toString() {
    return 'CfConfig(prompt: $prompt, choices: $choices, threshold: $threshold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CfConfigImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    prompt,
    const DeepCollectionEquality().hash(_choices),
    threshold,
  );

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CfConfigImplCopyWith<_$CfConfigImpl> get copyWith =>
      __$$CfConfigImplCopyWithImpl<_$CfConfigImpl>(this, _$identity);
}

abstract class _CfConfig implements CfConfig {
  const factory _CfConfig({
    required final BilingualText prompt,
    required final List<CfChoice> choices,
    required final double threshold,
  }) = _$CfConfigImpl;

  @override
  BilingualText get prompt;
  @override
  List<CfChoice> get choices;
  @override
  double get threshold;

  /// Create a copy of CfConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CfConfigImplCopyWith<_$CfConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

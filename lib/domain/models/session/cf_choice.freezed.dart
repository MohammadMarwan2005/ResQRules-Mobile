// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cf_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CfChoice {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  BilingualText get label => throw _privateConstructorUsedError;
  double get cfValue => throw _privateConstructorUsedError;

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CfChoiceCopyWith<CfChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CfChoiceCopyWith<$Res> {
  factory $CfChoiceCopyWith(CfChoice value, $Res Function(CfChoice) then) =
      _$CfChoiceCopyWithImpl<$Res, CfChoice>;
  @useResult
  $Res call({int id, String key, BilingualText label, double cfValue});

  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class _$CfChoiceCopyWithImpl<$Res, $Val extends CfChoice>
    implements $CfChoiceCopyWith<$Res> {
  _$CfChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? label = null,
    Object? cfValue = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            key:
                null == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String,
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
            cfValue:
                null == cfValue
                    ? _value.cfValue
                    : cfValue // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get label {
    return $BilingualTextCopyWith<$Res>(_value.label, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CfChoiceImplCopyWith<$Res>
    implements $CfChoiceCopyWith<$Res> {
  factory _$$CfChoiceImplCopyWith(
    _$CfChoiceImpl value,
    $Res Function(_$CfChoiceImpl) then,
  ) = __$$CfChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, BilingualText label, double cfValue});

  @override
  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class __$$CfChoiceImplCopyWithImpl<$Res>
    extends _$CfChoiceCopyWithImpl<$Res, _$CfChoiceImpl>
    implements _$$CfChoiceImplCopyWith<$Res> {
  __$$CfChoiceImplCopyWithImpl(
    _$CfChoiceImpl _value,
    $Res Function(_$CfChoiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? label = null,
    Object? cfValue = null,
  }) {
    return _then(
      _$CfChoiceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        key:
            null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String,
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        cfValue:
            null == cfValue
                ? _value.cfValue
                : cfValue // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$CfChoiceImpl implements _CfChoice {
  const _$CfChoiceImpl({
    required this.id,
    required this.key,
    required this.label,
    required this.cfValue,
  });

  @override
  final int id;
  @override
  final String key;
  @override
  final BilingualText label;
  @override
  final double cfValue;

  @override
  String toString() {
    return 'CfChoice(id: $id, key: $key, label: $label, cfValue: $cfValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CfChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cfValue, cfValue) || other.cfValue == cfValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, key, label, cfValue);

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CfChoiceImplCopyWith<_$CfChoiceImpl> get copyWith =>
      __$$CfChoiceImplCopyWithImpl<_$CfChoiceImpl>(this, _$identity);
}

abstract class _CfChoice implements CfChoice {
  const factory _CfChoice({
    required final int id,
    required final String key,
    required final BilingualText label,
    required final double cfValue,
  }) = _$CfChoiceImpl;

  @override
  int get id;
  @override
  String get key;
  @override
  BilingualText get label;
  @override
  double get cfValue;

  /// Create a copy of CfChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CfChoiceImplCopyWith<_$CfChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

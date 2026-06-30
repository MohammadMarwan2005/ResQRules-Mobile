// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'danger_panel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DangerPanelItem {
  String get key => throw _privateConstructorUsedError; // b | n | p | u
  BilingualText get label => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;

  /// Create a copy of DangerPanelItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DangerPanelItemCopyWith<DangerPanelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerPanelItemCopyWith<$Res> {
  factory $DangerPanelItemCopyWith(
    DangerPanelItem value,
    $Res Function(DangerPanelItem) then,
  ) = _$DangerPanelItemCopyWithImpl<$Res, DangerPanelItem>;
  @useResult
  $Res call({String key, BilingualText label, String severity});

  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class _$DangerPanelItemCopyWithImpl<$Res, $Val extends DangerPanelItem>
    implements $DangerPanelItemCopyWith<$Res> {
  _$DangerPanelItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DangerPanelItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? severity = null,
  }) {
    return _then(
      _value.copyWith(
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
            severity:
                null == severity
                    ? _value.severity
                    : severity // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of DangerPanelItem
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
abstract class _$$DangerPanelItemImplCopyWith<$Res>
    implements $DangerPanelItemCopyWith<$Res> {
  factory _$$DangerPanelItemImplCopyWith(
    _$DangerPanelItemImpl value,
    $Res Function(_$DangerPanelItemImpl) then,
  ) = __$$DangerPanelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, BilingualText label, String severity});

  @override
  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class __$$DangerPanelItemImplCopyWithImpl<$Res>
    extends _$DangerPanelItemCopyWithImpl<$Res, _$DangerPanelItemImpl>
    implements _$$DangerPanelItemImplCopyWith<$Res> {
  __$$DangerPanelItemImplCopyWithImpl(
    _$DangerPanelItemImpl _value,
    $Res Function(_$DangerPanelItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DangerPanelItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? severity = null,
  }) {
    return _then(
      _$DangerPanelItemImpl(
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
        severity:
            null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DangerPanelItemImpl implements _DangerPanelItem {
  const _$DangerPanelItemImpl({
    required this.key,
    required this.label,
    required this.severity,
  });

  @override
  final String key;
  // b | n | p | u
  @override
  final BilingualText label;
  @override
  final String severity;

  @override
  String toString() {
    return 'DangerPanelItem(key: $key, label: $label, severity: $severity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DangerPanelItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, label, severity);

  /// Create a copy of DangerPanelItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DangerPanelItemImplCopyWith<_$DangerPanelItemImpl> get copyWith =>
      __$$DangerPanelItemImplCopyWithImpl<_$DangerPanelItemImpl>(
        this,
        _$identity,
      );
}

abstract class _DangerPanelItem implements DangerPanelItem {
  const factory _DangerPanelItem({
    required final String key,
    required final BilingualText label,
    required final String severity,
  }) = _$DangerPanelItemImpl;

  @override
  String get key; // b | n | p | u
  @override
  BilingualText get label;
  @override
  String get severity;

  /// Create a copy of DangerPanelItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DangerPanelItemImplCopyWith<_$DangerPanelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OptionItem {
  int get id => throw _privateConstructorUsedError;
  BilingualText get label => throw _privateConstructorUsedError;

  /// Create a copy of OptionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionItemCopyWith<OptionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionItemCopyWith<$Res> {
  factory $OptionItemCopyWith(
    OptionItem value,
    $Res Function(OptionItem) then,
  ) = _$OptionItemCopyWithImpl<$Res, OptionItem>;
  @useResult
  $Res call({int id, BilingualText label});

  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class _$OptionItemCopyWithImpl<$Res, $Val extends OptionItem>
    implements $OptionItemCopyWith<$Res> {
  _$OptionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
          )
          as $Val,
    );
  }

  /// Create a copy of OptionItem
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
abstract class _$$OptionItemImplCopyWith<$Res>
    implements $OptionItemCopyWith<$Res> {
  factory _$$OptionItemImplCopyWith(
    _$OptionItemImpl value,
    $Res Function(_$OptionItemImpl) then,
  ) = __$$OptionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, BilingualText label});

  @override
  $BilingualTextCopyWith<$Res> get label;
}

/// @nodoc
class __$$OptionItemImplCopyWithImpl<$Res>
    extends _$OptionItemCopyWithImpl<$Res, _$OptionItemImpl>
    implements _$$OptionItemImplCopyWith<$Res> {
  __$$OptionItemImplCopyWithImpl(
    _$OptionItemImpl _value,
    $Res Function(_$OptionItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OptionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? label = null}) {
    return _then(
      _$OptionItemImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
      ),
    );
  }
}

/// @nodoc

class _$OptionItemImpl implements _OptionItem {
  const _$OptionItemImpl({required this.id, required this.label});

  @override
  final int id;
  @override
  final BilingualText label;

  @override
  String toString() {
    return 'OptionItem(id: $id, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label);

  /// Create a copy of OptionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionItemImplCopyWith<_$OptionItemImpl> get copyWith =>
      __$$OptionItemImplCopyWithImpl<_$OptionItemImpl>(this, _$identity);
}

abstract class _OptionItem implements OptionItem {
  const factory _OptionItem({
    required final int id,
    required final BilingualText label,
  }) = _$OptionItemImpl;

  @override
  int get id;
  @override
  BilingualText get label;

  /// Create a copy of OptionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionItemImplCopyWith<_$OptionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

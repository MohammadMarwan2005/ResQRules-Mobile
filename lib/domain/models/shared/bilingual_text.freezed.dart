// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bilingual_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BilingualText {
  String get en => throw _privateConstructorUsedError;
  String get ar => throw _privateConstructorUsedError;

  /// Create a copy of BilingualText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BilingualTextCopyWith<BilingualText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BilingualTextCopyWith<$Res> {
  factory $BilingualTextCopyWith(
    BilingualText value,
    $Res Function(BilingualText) then,
  ) = _$BilingualTextCopyWithImpl<$Res, BilingualText>;
  @useResult
  $Res call({String en, String ar});
}

/// @nodoc
class _$BilingualTextCopyWithImpl<$Res, $Val extends BilingualText>
    implements $BilingualTextCopyWith<$Res> {
  _$BilingualTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BilingualText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? en = null, Object? ar = null}) {
    return _then(
      _value.copyWith(
            en:
                null == en
                    ? _value.en
                    : en // ignore: cast_nullable_to_non_nullable
                        as String,
            ar:
                null == ar
                    ? _value.ar
                    : ar // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BilingualTextImplCopyWith<$Res>
    implements $BilingualTextCopyWith<$Res> {
  factory _$$BilingualTextImplCopyWith(
    _$BilingualTextImpl value,
    $Res Function(_$BilingualTextImpl) then,
  ) = __$$BilingualTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String ar});
}

/// @nodoc
class __$$BilingualTextImplCopyWithImpl<$Res>
    extends _$BilingualTextCopyWithImpl<$Res, _$BilingualTextImpl>
    implements _$$BilingualTextImplCopyWith<$Res> {
  __$$BilingualTextImplCopyWithImpl(
    _$BilingualTextImpl _value,
    $Res Function(_$BilingualTextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BilingualText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? en = null, Object? ar = null}) {
    return _then(
      _$BilingualTextImpl(
        en:
            null == en
                ? _value.en
                : en // ignore: cast_nullable_to_non_nullable
                    as String,
        ar:
            null == ar
                ? _value.ar
                : ar // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$BilingualTextImpl extends _BilingualText {
  const _$BilingualTextImpl({required this.en, required this.ar}) : super._();

  @override
  final String en;
  @override
  final String ar;

  @override
  String toString() {
    return 'BilingualText(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BilingualTextImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  /// Create a copy of BilingualText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BilingualTextImplCopyWith<_$BilingualTextImpl> get copyWith =>
      __$$BilingualTextImplCopyWithImpl<_$BilingualTextImpl>(this, _$identity);
}

abstract class _BilingualText extends BilingualText {
  const factory _BilingualText({
    required final String en,
    required final String ar,
  }) = _$BilingualTextImpl;
  const _BilingualText._() : super._();

  @override
  String get en;
  @override
  String get ar;

  /// Create a copy of BilingualText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BilingualTextImplCopyWith<_$BilingualTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

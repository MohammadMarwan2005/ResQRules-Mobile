// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScreenState {
  ScreenType get type => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get chartId => throw _privateConstructorUsedError;
  BilingualText get chartTitle => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  BilingualText get text => throw _privateConstructorUsedError;
  bool get isTerminal => throw _privateConstructorUsedError;
  List<OptionItem>? get options => throw _privateConstructorUsedError;
  CfConfig? get cf => throw _privateConstructorUsedError;
  HemTierInfo? get hemTier => throw _privateConstructorUsedError;
  String? get stubTarget => throw _privateConstructorUsedError;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenStateCopyWith<ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenStateCopyWith<$Res> {
  factory $ScreenStateCopyWith(
    ScreenState value,
    $Res Function(ScreenState) then,
  ) = _$ScreenStateCopyWithImpl<$Res, ScreenState>;
  @useResult
  $Res call({
    ScreenType type,
    String nodeId,
    String chartId,
    BilingualText chartTitle,
    int page,
    BilingualText text,
    bool isTerminal,
    List<OptionItem>? options,
    CfConfig? cf,
    HemTierInfo? hemTier,
    String? stubTarget,
  });

  $BilingualTextCopyWith<$Res> get chartTitle;
  $BilingualTextCopyWith<$Res> get text;
  $CfConfigCopyWith<$Res>? get cf;
  $HemTierInfoCopyWith<$Res>? get hemTier;
}

/// @nodoc
class _$ScreenStateCopyWithImpl<$Res, $Val extends ScreenState>
    implements $ScreenStateCopyWith<$Res> {
  _$ScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? nodeId = null,
    Object? chartId = null,
    Object? chartTitle = null,
    Object? page = null,
    Object? text = null,
    Object? isTerminal = null,
    Object? options = freezed,
    Object? cf = freezed,
    Object? hemTier = freezed,
    Object? stubTarget = freezed,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as ScreenType,
            nodeId:
                null == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String,
            chartId:
                null == chartId
                    ? _value.chartId
                    : chartId // ignore: cast_nullable_to_non_nullable
                        as String,
            chartTitle:
                null == chartTitle
                    ? _value.chartTitle
                    : chartTitle // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
            isTerminal:
                null == isTerminal
                    ? _value.isTerminal
                    : isTerminal // ignore: cast_nullable_to_non_nullable
                        as bool,
            options:
                freezed == options
                    ? _value.options
                    : options // ignore: cast_nullable_to_non_nullable
                        as List<OptionItem>?,
            cf:
                freezed == cf
                    ? _value.cf
                    : cf // ignore: cast_nullable_to_non_nullable
                        as CfConfig?,
            hemTier:
                freezed == hemTier
                    ? _value.hemTier
                    : hemTier // ignore: cast_nullable_to_non_nullable
                        as HemTierInfo?,
            stubTarget:
                freezed == stubTarget
                    ? _value.stubTarget
                    : stubTarget // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get chartTitle {
    return $BilingualTextCopyWith<$Res>(_value.chartTitle, (value) {
      return _then(_value.copyWith(chartTitle: value) as $Val);
    });
  }

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get text {
    return $BilingualTextCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CfConfigCopyWith<$Res>? get cf {
    if (_value.cf == null) {
      return null;
    }

    return $CfConfigCopyWith<$Res>(_value.cf!, (value) {
      return _then(_value.copyWith(cf: value) as $Val);
    });
  }

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HemTierInfoCopyWith<$Res>? get hemTier {
    if (_value.hemTier == null) {
      return null;
    }

    return $HemTierInfoCopyWith<$Res>(_value.hemTier!, (value) {
      return _then(_value.copyWith(hemTier: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScreenStateImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenStateImplCopyWith(
    _$ScreenStateImpl value,
    $Res Function(_$ScreenStateImpl) then,
  ) = __$$ScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ScreenType type,
    String nodeId,
    String chartId,
    BilingualText chartTitle,
    int page,
    BilingualText text,
    bool isTerminal,
    List<OptionItem>? options,
    CfConfig? cf,
    HemTierInfo? hemTier,
    String? stubTarget,
  });

  @override
  $BilingualTextCopyWith<$Res> get chartTitle;
  @override
  $BilingualTextCopyWith<$Res> get text;
  @override
  $CfConfigCopyWith<$Res>? get cf;
  @override
  $HemTierInfoCopyWith<$Res>? get hemTier;
}

/// @nodoc
class __$$ScreenStateImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenStateImpl>
    implements _$$ScreenStateImplCopyWith<$Res> {
  __$$ScreenStateImplCopyWithImpl(
    _$ScreenStateImpl _value,
    $Res Function(_$ScreenStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? nodeId = null,
    Object? chartId = null,
    Object? chartTitle = null,
    Object? page = null,
    Object? text = null,
    Object? isTerminal = null,
    Object? options = freezed,
    Object? cf = freezed,
    Object? hemTier = freezed,
    Object? stubTarget = freezed,
  }) {
    return _then(
      _$ScreenStateImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as ScreenType,
        nodeId:
            null == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String,
        chartId:
            null == chartId
                ? _value.chartId
                : chartId // ignore: cast_nullable_to_non_nullable
                    as String,
        chartTitle:
            null == chartTitle
                ? _value.chartTitle
                : chartTitle // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        isTerminal:
            null == isTerminal
                ? _value.isTerminal
                : isTerminal // ignore: cast_nullable_to_non_nullable
                    as bool,
        options:
            freezed == options
                ? _value._options
                : options // ignore: cast_nullable_to_non_nullable
                    as List<OptionItem>?,
        cf:
            freezed == cf
                ? _value.cf
                : cf // ignore: cast_nullable_to_non_nullable
                    as CfConfig?,
        hemTier:
            freezed == hemTier
                ? _value.hemTier
                : hemTier // ignore: cast_nullable_to_non_nullable
                    as HemTierInfo?,
        stubTarget:
            freezed == stubTarget
                ? _value.stubTarget
                : stubTarget // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ScreenStateImpl implements _ScreenState {
  const _$ScreenStateImpl({
    required this.type,
    required this.nodeId,
    required this.chartId,
    required this.chartTitle,
    required this.page,
    required this.text,
    required this.isTerminal,
    final List<OptionItem>? options,
    this.cf,
    this.hemTier,
    this.stubTarget,
  }) : _options = options;

  @override
  final ScreenType type;
  @override
  final String nodeId;
  @override
  final String chartId;
  @override
  final BilingualText chartTitle;
  @override
  final int page;
  @override
  final BilingualText text;
  @override
  final bool isTerminal;
  final List<OptionItem>? _options;
  @override
  List<OptionItem>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CfConfig? cf;
  @override
  final HemTierInfo? hemTier;
  @override
  final String? stubTarget;

  @override
  String toString() {
    return 'ScreenState(type: $type, nodeId: $nodeId, chartId: $chartId, chartTitle: $chartTitle, page: $page, text: $text, isTerminal: $isTerminal, options: $options, cf: $cf, hemTier: $hemTier, stubTarget: $stubTarget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.chartId, chartId) || other.chartId == chartId) &&
            (identical(other.chartTitle, chartTitle) ||
                other.chartTitle == chartTitle) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isTerminal, isTerminal) ||
                other.isTerminal == isTerminal) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.cf, cf) || other.cf == cf) &&
            (identical(other.hemTier, hemTier) || other.hemTier == hemTier) &&
            (identical(other.stubTarget, stubTarget) ||
                other.stubTarget == stubTarget));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    nodeId,
    chartId,
    chartTitle,
    page,
    text,
    isTerminal,
    const DeepCollectionEquality().hash(_options),
    cf,
    hemTier,
    stubTarget,
  );

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenStateImplCopyWith<_$ScreenStateImpl> get copyWith =>
      __$$ScreenStateImplCopyWithImpl<_$ScreenStateImpl>(this, _$identity);
}

abstract class _ScreenState implements ScreenState {
  const factory _ScreenState({
    required final ScreenType type,
    required final String nodeId,
    required final String chartId,
    required final BilingualText chartTitle,
    required final int page,
    required final BilingualText text,
    required final bool isTerminal,
    final List<OptionItem>? options,
    final CfConfig? cf,
    final HemTierInfo? hemTier,
    final String? stubTarget,
  }) = _$ScreenStateImpl;

  @override
  ScreenType get type;
  @override
  String get nodeId;
  @override
  String get chartId;
  @override
  BilingualText get chartTitle;
  @override
  int get page;
  @override
  BilingualText get text;
  @override
  bool get isTerminal;
  @override
  List<OptionItem>? get options;
  @override
  CfConfig? get cf;
  @override
  HemTierInfo? get hemTier;
  @override
  String? get stubTarget;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenStateImplCopyWith<_$ScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

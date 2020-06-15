// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'footer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FooterState _$FooterStateFromJson(Map<String, dynamic> json) {
  return _FooterState.fromJson(json);
}

class _$FooterStateTearOff {
  const _$FooterStateTearOff();

  _FooterState call({int count = 0}) {
    return _FooterState(
      count: count,
    );
  }
}

// ignore: unused_element
const $FooterState = _$FooterStateTearOff();

mixin _$FooterState {
  int get count;

  Map<String, dynamic> toJson();
  $FooterStateCopyWith<FooterState> get copyWith;
}

abstract class $FooterStateCopyWith<$Res> {
  factory $FooterStateCopyWith(
          FooterState value, $Res Function(FooterState) then) =
      _$FooterStateCopyWithImpl<$Res>;
  $Res call({int count});
}

class _$FooterStateCopyWithImpl<$Res> implements $FooterStateCopyWith<$Res> {
  _$FooterStateCopyWithImpl(this._value, this._then);

  final FooterState _value;
  // ignore: unused_field
  final $Res Function(FooterState) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$FooterStateCopyWith<$Res>
    implements $FooterStateCopyWith<$Res> {
  factory _$FooterStateCopyWith(
          _FooterState value, $Res Function(_FooterState) then) =
      __$FooterStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

class __$FooterStateCopyWithImpl<$Res> extends _$FooterStateCopyWithImpl<$Res>
    implements _$FooterStateCopyWith<$Res> {
  __$FooterStateCopyWithImpl(
      _FooterState _value, $Res Function(_FooterState) _then)
      : super(_value, (v) => _then(v as _FooterState));

  @override
  _FooterState get _value => super._value as _FooterState;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_FooterState(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

@JsonSerializable()
class _$_FooterState with DiagnosticableTreeMixin implements _FooterState {
  const _$_FooterState({this.count = 0}) : assert(count != null);

  factory _$_FooterState.fromJson(Map<String, dynamic> json) =>
      _$_$_FooterStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FooterState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FooterState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FooterState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$FooterStateCopyWith<_FooterState> get copyWith =>
      __$FooterStateCopyWithImpl<_FooterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FooterStateToJson(this);
  }
}

abstract class _FooterState implements FooterState {
  const factory _FooterState({int count}) = _$_FooterState;

  factory _FooterState.fromJson(Map<String, dynamic> json) =
      _$_FooterState.fromJson;

  @override
  int get count;
  @override
  _$FooterStateCopyWith<_FooterState> get copyWith;
}

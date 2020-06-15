import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'footer_state.freezed.dart';
part 'footer_state.g.dart';

@freezed
abstract class FooterState with _$FooterState {
  const factory FooterState({
    @Default(0) int count,
  }) = _FooterState;
  factory FooterState.fromJson(Map<String, dynamic> json) => _$FooterStateFromJson(json);
}

class FooterStateNotifier extends StateNotifier<FooterState> {
  FooterStateNotifier() : super(const FooterState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}
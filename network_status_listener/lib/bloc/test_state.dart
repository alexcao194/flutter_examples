part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    @Default(null) String? error,
    @Default("Data") String data,
    @Default(false) bool loading,
  }) = _TestState;
}

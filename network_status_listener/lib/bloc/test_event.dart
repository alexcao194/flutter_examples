part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.testSuccess() = _TestSuccess;
  const factory TestEvent.testFailure() = _TestFailure;
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network_status_listener/utils/connectivity_service.dart';

part 'test_event.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(const TestState()) {
    on<TestEvent>((event, emit) async {
      await event.map(testSuccess: (event) => _onTestSuccess(event, emit), testFailure: (event) => _onTestFailure(event, emit));
    });
  }

  _onTestSuccess(_TestSuccess event, Emitter<TestState> emit) async {
    emit(state.copyWith(loading: true, error: null));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(data: "Success", loading: false, error: null));
  }

  _onTestFailure(_TestFailure event, Emitter<TestState> emit) async {
    emit(state.copyWith(loading: true, error: null));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(error: "Failure", loading: false));
  }
}

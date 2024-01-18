// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testSuccess,
    required TResult Function() testFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testSuccess,
    TResult? Function()? testFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testSuccess,
    TResult Function()? testFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TestSuccess value) testSuccess,
    required TResult Function(_TestFailure value) testFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TestSuccess value)? testSuccess,
    TResult? Function(_TestFailure value)? testFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TestSuccess value)? testSuccess,
    TResult Function(_TestFailure value)? testFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TestSuccessImplCopyWith<$Res> {
  factory _$$TestSuccessImplCopyWith(
          _$TestSuccessImpl value, $Res Function(_$TestSuccessImpl) then) =
      __$$TestSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TestSuccessImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestSuccessImpl>
    implements _$$TestSuccessImplCopyWith<$Res> {
  __$$TestSuccessImplCopyWithImpl(
      _$TestSuccessImpl _value, $Res Function(_$TestSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TestSuccessImpl implements _TestSuccess {
  const _$TestSuccessImpl();

  @override
  String toString() {
    return 'TestEvent.testSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TestSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testSuccess,
    required TResult Function() testFailure,
  }) {
    return testSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testSuccess,
    TResult? Function()? testFailure,
  }) {
    return testSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testSuccess,
    TResult Function()? testFailure,
    required TResult orElse(),
  }) {
    if (testSuccess != null) {
      return testSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TestSuccess value) testSuccess,
    required TResult Function(_TestFailure value) testFailure,
  }) {
    return testSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TestSuccess value)? testSuccess,
    TResult? Function(_TestFailure value)? testFailure,
  }) {
    return testSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TestSuccess value)? testSuccess,
    TResult Function(_TestFailure value)? testFailure,
    required TResult orElse(),
  }) {
    if (testSuccess != null) {
      return testSuccess(this);
    }
    return orElse();
  }
}

abstract class _TestSuccess implements TestEvent {
  const factory _TestSuccess() = _$TestSuccessImpl;
}

/// @nodoc
abstract class _$$TestFailureImplCopyWith<$Res> {
  factory _$$TestFailureImplCopyWith(
          _$TestFailureImpl value, $Res Function(_$TestFailureImpl) then) =
      __$$TestFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TestFailureImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestFailureImpl>
    implements _$$TestFailureImplCopyWith<$Res> {
  __$$TestFailureImplCopyWithImpl(
      _$TestFailureImpl _value, $Res Function(_$TestFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TestFailureImpl implements _TestFailure {
  const _$TestFailureImpl();

  @override
  String toString() {
    return 'TestEvent.testFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TestFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testSuccess,
    required TResult Function() testFailure,
  }) {
    return testFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testSuccess,
    TResult? Function()? testFailure,
  }) {
    return testFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testSuccess,
    TResult Function()? testFailure,
    required TResult orElse(),
  }) {
    if (testFailure != null) {
      return testFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TestSuccess value) testSuccess,
    required TResult Function(_TestFailure value) testFailure,
  }) {
    return testFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TestSuccess value)? testSuccess,
    TResult? Function(_TestFailure value)? testFailure,
  }) {
    return testFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TestSuccess value)? testSuccess,
    TResult Function(_TestFailure value)? testFailure,
    required TResult orElse(),
  }) {
    if (testFailure != null) {
      return testFailure(this);
    }
    return orElse();
  }
}

abstract class _TestFailure implements TestEvent {
  const factory _TestFailure() = _$TestFailureImpl;
}

/// @nodoc
mixin _$TestState {
  String? get error => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call({String? error, String data, bool loading});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStateImplCopyWith<$Res>
    implements $TestStateCopyWith<$Res> {
  factory _$$TestStateImplCopyWith(
          _$TestStateImpl value, $Res Function(_$TestStateImpl) then) =
      __$$TestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, String data, bool loading});
}

/// @nodoc
class __$$TestStateImplCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$TestStateImpl>
    implements _$$TestStateImplCopyWith<$Res> {
  __$$TestStateImplCopyWithImpl(
      _$TestStateImpl _value, $Res Function(_$TestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = null,
    Object? loading = null,
  }) {
    return _then(_$TestStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TestStateImpl implements _TestState {
  const _$TestStateImpl(
      {this.error = null, this.data = "Data", this.loading = false});

  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final String data;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'TestState(error: $error, data: $data, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, data, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      __$$TestStateImplCopyWithImpl<_$TestStateImpl>(this, _$identity);
}

abstract class _TestState implements TestState {
  const factory _TestState(
      {final String? error,
      final String data,
      final bool loading}) = _$TestStateImpl;

  @override
  String? get error;
  @override
  String get data;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

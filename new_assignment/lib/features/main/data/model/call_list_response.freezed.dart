// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CallListResponse _$CallListResponseFromJson(Map<String, dynamic> json) {
  return _CallListResponse.fromJson(json);
}

/// @nodoc
mixin _$CallListResponse {
  int? get pending => throw _privateConstructorUsedError;
  int? get called => throw _privateConstructorUsedError;
  int? get rescheduled => throw _privateConstructorUsedError;
  List<CallItem>? get calls => throw _privateConstructorUsedError;

  /// Serializes this CallListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CallListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallListResponseCopyWith<CallListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallListResponseCopyWith<$Res> {
  factory $CallListResponseCopyWith(
          CallListResponse value, $Res Function(CallListResponse) then) =
      _$CallListResponseCopyWithImpl<$Res, CallListResponse>;
  @useResult
  $Res call(
      {int? pending, int? called, int? rescheduled, List<CallItem>? calls});
}

/// @nodoc
class _$CallListResponseCopyWithImpl<$Res, $Val extends CallListResponse>
    implements $CallListResponseCopyWith<$Res> {
  _$CallListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = freezed,
    Object? called = freezed,
    Object? rescheduled = freezed,
    Object? calls = freezed,
  }) {
    return _then(_value.copyWith(
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
      called: freezed == called
          ? _value.called
          : called // ignore: cast_nullable_to_non_nullable
              as int?,
      rescheduled: freezed == rescheduled
          ? _value.rescheduled
          : rescheduled // ignore: cast_nullable_to_non_nullable
              as int?,
      calls: freezed == calls
          ? _value.calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallListResponseImplCopyWith<$Res>
    implements $CallListResponseCopyWith<$Res> {
  factory _$$CallListResponseImplCopyWith(_$CallListResponseImpl value,
          $Res Function(_$CallListResponseImpl) then) =
      __$$CallListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? pending, int? called, int? rescheduled, List<CallItem>? calls});
}

/// @nodoc
class __$$CallListResponseImplCopyWithImpl<$Res>
    extends _$CallListResponseCopyWithImpl<$Res, _$CallListResponseImpl>
    implements _$$CallListResponseImplCopyWith<$Res> {
  __$$CallListResponseImplCopyWithImpl(_$CallListResponseImpl _value,
      $Res Function(_$CallListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = freezed,
    Object? called = freezed,
    Object? rescheduled = freezed,
    Object? calls = freezed,
  }) {
    return _then(_$CallListResponseImpl(
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
      called: freezed == called
          ? _value.called
          : called // ignore: cast_nullable_to_non_nullable
              as int?,
      rescheduled: freezed == rescheduled
          ? _value.rescheduled
          : rescheduled // ignore: cast_nullable_to_non_nullable
              as int?,
      calls: freezed == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallListResponseImpl implements _CallListResponse {
  const _$CallListResponseImpl(
      {this.pending,
      this.called,
      this.rescheduled,
      final List<CallItem>? calls})
      : _calls = calls;

  factory _$CallListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallListResponseImplFromJson(json);

  @override
  final int? pending;
  @override
  final int? called;
  @override
  final int? rescheduled;
  final List<CallItem>? _calls;
  @override
  List<CallItem>? get calls {
    final value = _calls;
    if (value == null) return null;
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CallListResponse(pending: $pending, called: $called, rescheduled: $rescheduled, calls: $calls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallListResponseImpl &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.called, called) || other.called == called) &&
            (identical(other.rescheduled, rescheduled) ||
                other.rescheduled == rescheduled) &&
            const DeepCollectionEquality().equals(other._calls, _calls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pending, called, rescheduled,
      const DeepCollectionEquality().hash(_calls));

  /// Create a copy of CallListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallListResponseImplCopyWith<_$CallListResponseImpl> get copyWith =>
      __$$CallListResponseImplCopyWithImpl<_$CallListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallListResponseImplToJson(
      this,
    );
  }
}

abstract class _CallListResponse implements CallListResponse {
  const factory _CallListResponse(
      {final int? pending,
      final int? called,
      final int? rescheduled,
      final List<CallItem>? calls}) = _$CallListResponseImpl;

  factory _CallListResponse.fromJson(Map<String, dynamic> json) =
      _$CallListResponseImpl.fromJson;

  @override
  int? get pending;
  @override
  int? get called;
  @override
  int? get rescheduled;
  @override
  List<CallItem>? get calls;

  /// Create a copy of CallListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallListResponseImplCopyWith<_$CallListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

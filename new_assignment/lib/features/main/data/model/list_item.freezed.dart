// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListItem _$ListItemFromJson(Map<String, dynamic> json) {
  return _ListItem.fromJson(json);
}

/// @nodoc
mixin _$ListItem {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<dynamic>? get agents => throw _privateConstructorUsedError;
  String? get clientId => throw _privateConstructorUsedError;

  /// Serializes this ListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListItemCopyWith<ListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemCopyWith<$Res> {
  factory $ListItemCopyWith(ListItem value, $Res Function(ListItem) then) =
      _$ListItemCopyWithImpl<$Res, ListItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      List<dynamic>? agents,
      String? clientId});
}

/// @nodoc
class _$ListItemCopyWithImpl<$Res, $Val extends ListItem>
    implements $ListItemCopyWith<$Res> {
  _$ListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? agents = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      agents: freezed == agents
          ? _value.agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListItemImplCopyWith<$Res>
    implements $ListItemCopyWith<$Res> {
  factory _$$ListItemImplCopyWith(
          _$ListItemImpl value, $Res Function(_$ListItemImpl) then) =
      __$$ListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      List<dynamic>? agents,
      String? clientId});
}

/// @nodoc
class __$$ListItemImplCopyWithImpl<$Res>
    extends _$ListItemCopyWithImpl<$Res, _$ListItemImpl>
    implements _$$ListItemImplCopyWith<$Res> {
  __$$ListItemImplCopyWithImpl(
      _$ListItemImpl _value, $Res Function(_$ListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? agents = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_$ListItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      agents: freezed == agents
          ? _value._agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListItemImpl implements _ListItem {
  const _$ListItemImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required final List<dynamic>? agents,
      required this.clientId})
      : _agents = agents;

  factory _$ListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListItemImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? name;
  final List<dynamic>? _agents;
  @override
  List<dynamic>? get agents {
    final value = _agents;
    if (value == null) return null;
    if (_agents is EqualUnmodifiableListView) return _agents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? clientId;

  @override
  String toString() {
    return 'ListItem(id: $id, name: $name, agents: $agents, clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._agents, _agents) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_agents), clientId);

  /// Create a copy of ListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListItemImplCopyWith<_$ListItemImpl> get copyWith =>
      __$$ListItemImplCopyWithImpl<_$ListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListItemImplToJson(
      this,
    );
  }
}

abstract class _ListItem implements ListItem {
  const factory _ListItem(
      {@JsonKey(name: '_id') required final String? id,
      required final String? name,
      required final List<dynamic>? agents,
      required final String? clientId}) = _$ListItemImpl;

  factory _ListItem.fromJson(Map<String, dynamic> json) =
      _$ListItemImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get name;
  @override
  List<dynamic>? get agents;
  @override
  String? get clientId;

  /// Create a copy of ListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListItemImplCopyWith<_$ListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

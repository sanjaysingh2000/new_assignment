// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListItemImpl _$$ListItemImplFromJson(Map<String, dynamic> json) =>
    _$ListItemImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      agents: json['agents'] as List<dynamic>?,
      clientId: json['clientId'] as String?,
    );

Map<String, dynamic> _$$ListItemImplToJson(_$ListItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'agents': instance.agents,
      'clientId': instance.clientId,
    };

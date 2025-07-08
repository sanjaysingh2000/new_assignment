// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallListResponseImpl _$$CallListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CallListResponseImpl(
      pending: (json['pending'] as num?)?.toInt(),
      called: (json['called'] as num?)?.toInt(),
      rescheduled: (json['rescheduled'] as num?)?.toInt(),
      calls: (json['calls'] as List<dynamic>?)
          ?.map((e) => CallItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CallListResponseImplToJson(
        _$CallListResponseImpl instance) =>
    <String, dynamic>{
      'pending': instance.pending,
      'called': instance.called,
      'rescheduled': instance.rescheduled,
      'calls': instance.calls,
    };

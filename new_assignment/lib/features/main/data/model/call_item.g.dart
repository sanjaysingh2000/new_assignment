// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallItemImpl _$$CallItemImplFromJson(Map<String, dynamic> json) =>
    _$CallItemImpl(
      FirstName: json['FirstName'] as String?,
      LastName: json['LastName'] as String?,
      Title: json['Title'] as String?,
      Phone: (json['Phone'] as num?)?.toInt(),
      otherPhone1: (json['Other Phone 1'] as num?)?.toInt(),
      otherPhone2: (json['Other Phone 2'] as num?)?.toInt(),
      otherPhone3: (json['Other Phone 3'] as num?)?.toInt(),
      otherPhone4: (json['Other Phone 4'] as num?)?.toInt(),
      Email: json['Email'] as String?,
      Address: json['Address'] as String?,
      Company: json['Company'] as String?,
      Age: (json['Age'] as num?)?.toInt(),
      Zip: (json['Zip'] as num?)?.toInt(),
      MaritalStatus: json['MaritalStatus'] as String?,
      Notes: json['Notes'] as String?,
      calledAt: json['calledAt'] as String?,
      rescheduledAt: json['rescheduledAt'] as String?,
      createdAt: json['createdAt'] as String?,
      status: json['status'] as String?,
      agentName: json['agentName'] as String?,
      agentId: json['agentId'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      feedback: json['feedback'] as String?,
    );

Map<String, dynamic> _$$CallItemImplToJson(_$CallItemImpl instance) =>
    <String, dynamic>{
      'FirstName': instance.FirstName,
      'LastName': instance.LastName,
      'Title': instance.Title,
      'Phone': instance.Phone,
      'Other Phone 1': instance.otherPhone1,
      'Other Phone 2': instance.otherPhone2,
      'Other Phone 3': instance.otherPhone3,
      'Other Phone 4': instance.otherPhone4,
      'Email': instance.Email,
      'Address': instance.Address,
      'Company': instance.Company,
      'Age': instance.Age,
      'Zip': instance.Zip,
      'MaritalStatus': instance.MaritalStatus,
      'Notes': instance.Notes,
      'calledAt': instance.calledAt,
      'rescheduledAt': instance.rescheduledAt,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'agentName': instance.agentName,
      'agentId': instance.agentId,
      'duration': instance.duration,
      'feedback': instance.feedback,
    };

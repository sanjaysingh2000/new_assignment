import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_item.freezed.dart';
part 'call_item.g.dart';

@freezed
class CallItem with _$CallItem {
  const factory CallItem({
    String? FirstName,
    String? LastName,
    String? Title,
    int? Phone,
    @JsonKey(name: 'Other Phone 1') int? otherPhone1,
    @JsonKey(name: 'Other Phone 2') int? otherPhone2,
    @JsonKey(name: 'Other Phone 3') int? otherPhone3,
    @JsonKey(name: 'Other Phone 4') int? otherPhone4,
    String? Email,
    String? Address,
    String? Company,
    int? Age,
    int? Zip,
    String? MaritalStatus,
    String? Notes,
    String? calledAt,
    String? rescheduledAt,
    String? createdAt,
    String? status,
    String? agentName,
    String? agentId,
    int? duration,
    String? feedback,
  }) = _CallItem;

  factory CallItem.fromJson(Map<String, dynamic> json) => _$CallItemFromJson(json);
}

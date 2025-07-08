import 'package:freezed_annotation/freezed_annotation.dart';
import 'call_item.dart';

part 'call_list_response.freezed.dart';
part 'call_list_response.g.dart';

@freezed
class CallListResponse with _$CallListResponse {
  const factory CallListResponse({
    int? pending,
    int? called,
    int? rescheduled,
    List<CallItem>? calls,
  }) = _CallListResponse;

  factory CallListResponse.fromJson(Map<String, dynamic> json) => _$CallListResponseFromJson(json);
}

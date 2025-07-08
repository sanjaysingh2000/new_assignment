import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request.freezed.dart';
part 'verify_otp_request.g.dart';

@freezed
class VerifyOtpRequest with _$VerifyOtpRequest {
  const factory VerifyOtpRequest({
    required String email,
    required String otp,
  }) = _VerifyOtpRequest;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);
}

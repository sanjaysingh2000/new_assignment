import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_model.freezed.dart';
part 'send_otp_model.g.dart';

@freezed
class SendOtpModel with _$SendOtpModel {
  const factory SendOtpModel({
    required String email,
  }) = _LoginModel;

  factory SendOtpModel.fromJson(Map<String, dynamic> json) =>
      _$SendOtpModelFromJson(json);
}

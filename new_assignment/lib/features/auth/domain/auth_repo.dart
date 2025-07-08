import 'package:new_assignment/features/auth/data/model/login_response_model.dart';
import 'package:new_assignment/features/auth/data/model/register_response.dart';

abstract class AuthRepo {
  Future<void> sendOtp(String email);
  Future<void> verifyOtp(String email, String otp);
  Future<RegisterResponse> register(String userName, String email, String password);
  Future<LoginResponseModel> login(String email, String password);
}
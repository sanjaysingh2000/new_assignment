import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/auth/data/auth_remote_source.dart';
import 'package:new_assignment/features/auth/data/model/login_response_model.dart';
import 'package:new_assignment/features/auth/data/model/register_response.dart';
import 'package:new_assignment/features/auth/domain/auth_repo.dart';

@lazySingleton
class AuthUseCases {
  AuthUseCases(this._authRepo);
  final AuthRepo _authRepo;

  Future<LoginResponseModel> login(String email, String password) {
    return _authRepo.login(email, password);
  }

  Future<RegisterResponse> register(
      String userName, String email, String password) {
    return _authRepo.register(userName, email, password);
  }

  Future<void> sendOtp(String email) {
    return _authRepo.sendOtp(email);
  }

   verifyOtp(String email, String otp) {
    return _authRepo.verifyOtp(email, otp);
  }
}
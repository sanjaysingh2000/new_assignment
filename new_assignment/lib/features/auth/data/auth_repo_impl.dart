import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/auth/data/auth_remote_source.dart';
import 'package:new_assignment/features/auth/data/model/login_response_model.dart';
import 'package:new_assignment/features/auth/data/model/register_response.dart';
import 'package:new_assignment/features/auth/domain/auth_repo.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl extends AuthRepo{

  final AuthRemoteSource _authRemoteSource;

  AuthRepoImpl(this._authRemoteSource);

  @override
  Future<LoginResponseModel> login(String email, String password) {
    return _authRemoteSource.login(email, password);
  }

  @override
  Future<RegisterResponse> register(String userName, String email, String password) {
    return _authRemoteSource.register(userName, email, password);
  }

  @override
  Future<void> sendOtp(String email) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

  @override
  Future<void> verifyOtp(String email, String otp) {
    // TODO: implement verifyOtp
    throw UnimplementedError();
  }
}
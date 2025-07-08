import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/auth/data/model/login_response_model.dart';
import 'package:new_assignment/features/auth/data/model/register_data.dart';
import 'package:new_assignment/features/auth/data/model/register_response.dart';
import 'package:new_assignment/features/auth/domain/use_cases/auth_use_cases.dart';

@injectable
class AuthProvider extends ChangeNotifier {
  AuthProvider(this._authUseCases);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  RegisterData? _registerData;
  RegisterData? get registerData => _registerData;

  LoginResponseModel? _loginResponseModel;
  LoginResponseModel? get loginResponseModel => _loginResponseModel;

  void setRegisterData(RegisterData data) {
    _registerData = data;
    notifyListeners();
  }

  final AuthUseCases _authUseCases;

  Future<RegisterResponse?> register(
      String userName, String email, String password) async {
    try {
      _isLoading = true;
      notifyListeners();
      final response = await _authUseCases.register(userName, email, password);
      _isLoading = false;
      notifyListeners();
      return response;
    } on DioException catch (e) {
      _isLoading = false;
      notifyListeners();
    }
    return null;
  }

  Future<LoginResponseModel?> login(String email, String password) async {
    try {
      _isLoading = true;
      notifyListeners();
      final response = await _authUseCases.login(email, password);
      _loginResponseModel = response;
      _isLoading = false;
      notifyListeners();
      return response;
    } on DioException catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<String?> sendOtp(String email) async {
    try {
      _isLoading = true;
      notifyListeners();
      await _authUseCases.sendOtp(email);
      _isLoading = false;
      notifyListeners();
    } on DioException catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> verifyOtp(String email, String otp) async {
    try {
      _isLoading = true;
      notifyListeners();
      final Response response = await _authUseCases.verifyOtp(email, otp);
      if (response.statusCode == 200) {
        await register(registerData?.name ?? '', registerData?.email ?? '',
            registerData?.password ?? '');
      }
      _isLoading = false;
      notifyListeners();
    } on DioException catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}

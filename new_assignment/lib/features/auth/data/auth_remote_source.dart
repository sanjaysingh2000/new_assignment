import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/auth/data/model/login_response_model.dart';
import 'package:new_assignment/features/auth/data/model/register_response.dart';

abstract class AuthRemoteSource {
  Future<void> sendOtp(String email);
  Future<void> verifyOtp(String email, String otp);
  Future<RegisterResponse> register(
      String userName, String email, String password);
  Future<LoginResponseModel> login(String email, String password);
}

@LazySingleton(as: AuthRemoteSource)
class AuthRemoteSourceImpl implements AuthRemoteSource {
  final Dio _dio;

  AuthRemoteSourceImpl(this._dio);
  @override
  Future<void> sendOtp(String email) async {
    try{
      final response = await _dio.post(
        'https://mock-api.calleyacd.com/api/auth/send-otp',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'email': email,
        },
       
      );
      
    }on DioException catch (e) {
     rethrow;
    }
  }

  @override
  Future<void> verifyOtp(String email, String otp) async {
    try{
      final response = await _dio.post(
        'https://mock-api.calleyacd.com/api/auth/verify-otp',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'email': email,
          'otp': otp,
        },
      );
    }on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterResponse> register(
      String userName, String email, String password) async {
    final Response response = await _dio.post(
      'https://mock-api.calleyacd.com/api/auth/register',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
      data: {
        "username": userName,
        'email': email,
        'password': password,
      },
    );
    return RegisterResponse.fromJson(response.data);
  }

  @override
  Future<LoginResponseModel> login(String email, String password) async {
    try {
      final response =
          await _dio.post('https://mock-api.calleyacd.com/api/auth/login',
              options: Options(
                headers: {
                  'Content-Type': 'application/json',
                },
              ),
              data: {
            'email': email,
            'password': password,
          });

      return LoginResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      rethrow;
    }
  }
}

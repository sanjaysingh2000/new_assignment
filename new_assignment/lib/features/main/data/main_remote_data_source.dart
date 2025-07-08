import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/main/data/model/call_list_response.dart';
import 'package:new_assignment/features/main/data/model/list_item.dart';

abstract class MainRemoteDataSource {
  Future<CallListResponse> fetchListItems(String userId, String email);
  Future<ListItem> fetchCallList(String userId, String email);
}

@LazySingleton(as: MainRemoteDataSource)
class MainRemoteDataSourceImpl implements MainRemoteDataSource {
  final Dio _dio;

  MainRemoteDataSourceImpl(this._dio);
  @override
  Future<ListItem> fetchCallList(String email, String userId) async {
    try {
      ///userId = 68626f9497757cb741f449b0
      final response = await _dio
          .get('https://mock-api.calleyacd.com/api/list?userId=$userId',
              options: Options(
                headers: {
                  'Content-Type': 'application/json',
                },
              ),
              data: {"email": email});
      if (response.statusCode == 200) {
        return ListItem.fromJson(response.data);
      } else {
        throw Exception('Failed to load call list');
      }
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<CallListResponse> fetchListItems(String userId, String email) async {
    try {
      final response = await _dio.get(
        'https://mock-api.calleyacd.com/api/list/$userId',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {"email": "email"},
      );
      return CallListResponse.fromJson(response.data);
    } on DioException catch (e) {
      rethrow;
    }
  }
}

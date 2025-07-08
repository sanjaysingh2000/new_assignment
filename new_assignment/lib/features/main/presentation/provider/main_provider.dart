import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/main/data/model/call_list_response.dart';
import 'package:new_assignment/features/main/data/model/list_item.dart';
import 'package:new_assignment/features/main/domain/usecases/main_usecases.dart';

@injectable
class MainProvider extends ChangeNotifier {
  final MainUsecases _mainUsecases;

  MainProvider(this._mainUsecases);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  CallListResponse? _callListResponse;
  CallListResponse? get callListResponse => _callListResponse;

  ListItem? _listItem;
  ListItem? get listItem => _listItem;
  

  void setIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  Future<CallListResponse> fetchListItems(String userId, String email) async {
    _isLoading = true;
    notifyListeners();
    try {
      final response = await _mainUsecases.fetchListItems(userId, email);
      _isLoading = false;
      _callListResponse=response;
      notifyListeners();
      return response;
    }on DioException catch (e) {
      _isLoading = false;
      notifyListeners();
      print('mili excep');
      rethrow;
    }
  }

  Future<ListItem> fetchCallList(String userId, String email) async {
    _isLoading = true;
    notifyListeners();
    try {
      final response = await _mainUsecases.fetchCallList(userId, email);
      _listItem = response;
      _isLoading = false;
      notifyListeners();
      return response;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  //   Future<LoginResponseModel?> login(String email, String password) async {
  //   try {
  //     _isLoading = true;
  //     notifyListeners();
  //     final response = await _authUseCases.login(email, password);
  //     _loginResponseModel = response;
  //     _isLoading = false;
  //     notifyListeners();
  //     return response;
  //   } on DioException catch (e) {
  //     _isLoading = false;
  //     notifyListeners();
  //     rethrow;
  //   }
  // }
}

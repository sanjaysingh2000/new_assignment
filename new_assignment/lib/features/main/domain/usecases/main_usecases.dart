import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/main/data/model/call_list_response.dart';
import 'package:new_assignment/features/main/data/model/list_item.dart';
import 'package:new_assignment/features/main/domain/main_repo.dart';

@lazySingleton
class MainUsecases {
  final MainRepo _mainRepo;

  MainUsecases(this._mainRepo);

  Future<CallListResponse> fetchListItems(String userId, String email) {
    return _mainRepo.fetchListItems(userId, email);
  }

  Future<ListItem> fetchCallList(String userId, String email) {
    return _mainRepo.fetchCallList(userId, email);
  }
  
}
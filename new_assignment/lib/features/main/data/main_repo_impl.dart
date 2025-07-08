import 'package:injectable/injectable.dart';
import 'package:new_assignment/features/main/data/main_remote_data_source.dart';
import 'package:new_assignment/features/main/data/model/call_list_response.dart';
import 'package:new_assignment/features/main/data/model/list_item.dart';
import 'package:new_assignment/features/main/domain/main_repo.dart';

@LazySingleton(as: MainRepo)
class MainRepoImpl extends MainRepo{

  MainRepoImpl(this._mainRemoteDataSource);

  final MainRemoteDataSource _mainRemoteDataSource;

  @override
  Future<ListItem> fetchCallList(String userId, String email) {
    return _mainRemoteDataSource.fetchCallList(userId, email);
  }

  @override
  Future<CallListResponse> fetchListItems(String userId, String email) {
   return _mainRemoteDataSource.fetchListItems(userId, email);
  }

}
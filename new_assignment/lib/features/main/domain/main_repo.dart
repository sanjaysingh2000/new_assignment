import 'package:new_assignment/features/main/data/model/call_list_response.dart';
import 'package:new_assignment/features/main/data/model/list_item.dart';

abstract class MainRepo{
   Future<CallListResponse> fetchListItems(String userId, String email);
  Future<ListItem> fetchCallList(String userId, String email);
}


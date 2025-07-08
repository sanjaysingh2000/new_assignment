import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item.freezed.dart';
part 'list_item.g.dart';

@freezed
class ListItem with _$ListItem {
  const factory ListItem({
    @JsonKey(name: '_id') required String? id,
    required String? name,
    required List<dynamic>? agents,
    required String? clientId,
  }) = _ListItem;

  factory ListItem.fromJson(Map<String, dynamic> json) => _$ListItemFromJson(json);
}

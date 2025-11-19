import 'package:recipes_app/list_items/list_item.dart';

class ServeListItem extends ListItem{
  final String serves;
  final String nritems;

  ServeListItem({
    required this.serves,
    required this.nritems
  });

  factory ServeListItem.fromJson(Map<String, dynamic> json) {
    return ServeListItem(
      serves: json['serves'],
      nritems: json['nritems']
    );
  }
}
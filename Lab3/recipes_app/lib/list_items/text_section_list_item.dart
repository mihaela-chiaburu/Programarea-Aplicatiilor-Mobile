import 'package:recipes_app/list_items/list_item.dart';

class TextSectionListItem extends ListItem{
  final String text;

  TextSectionListItem({
    required this.text
  });

  factory TextSectionListItem.fromJson(Map<String, dynamic> json) {
    return TextSectionListItem(
      text: json['text']
    );
  }
}
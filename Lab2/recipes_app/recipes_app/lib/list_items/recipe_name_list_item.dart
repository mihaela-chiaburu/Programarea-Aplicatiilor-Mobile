import 'package:recipes_app/list_items/list_item.dart';

class RecipeNameListItem extends ListItem{
  final String text;
  final String views;

  RecipeNameListItem({
    required this.text,
    required this.views
  });
}
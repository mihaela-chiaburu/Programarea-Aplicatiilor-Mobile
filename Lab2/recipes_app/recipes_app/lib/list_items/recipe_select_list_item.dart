import 'package:recipes_app/list_items/list_item.dart';

class RecipeSelectListItem extends ListItem{
  final String recipeName;
  final String imageUrl;
  final String rating;
  final String time;

  RecipeSelectListItem({
    required this.recipeName,
    required this.imageUrl,
    required this.rating,
    required this.time
  });
}
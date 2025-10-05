import 'package:recipes_app/list_items/list_item.dart';

class NewRecipesListItem extends ListItem{
  final String recipeName;
  final String imageUrl;
  final String time;
  final String authorName;
  final String avatarUrl;

  NewRecipesListItem({
    required this.recipeName,
    required this.imageUrl,
    required this.time,
    required this.authorName,
    required this.avatarUrl
  });
}
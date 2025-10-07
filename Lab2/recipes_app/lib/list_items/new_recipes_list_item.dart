import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/models/recipe.dart';

class NewRecipesListItem extends ListItem{
  final Recipe newrecipe;
  final String authorName;
  final String avatarUrl;

  NewRecipesListItem({
    required this.newrecipe,
    required this.authorName,
    required this.avatarUrl
  });
}
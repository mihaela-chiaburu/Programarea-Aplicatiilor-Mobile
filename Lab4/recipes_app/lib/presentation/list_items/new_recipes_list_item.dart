import 'package:recipes_app/presentation/list_items/list_item.dart';
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

  factory NewRecipesListItem.fromJson(Map<String, dynamic> json) {
    return NewRecipesListItem(
      newrecipe: Recipe.fromJson(json),
      authorName: json['authorName'],
      avatarUrl: json['avatarUrl'],
    );
  }
}
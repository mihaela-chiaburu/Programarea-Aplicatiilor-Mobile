import 'package:recipes_app/presentation/list_items/list_item.dart';

class IngredientListItem extends ListItem{
  final String ingredient;
  final String imageUrl;
  final String grams;

  IngredientListItem({
    required this.ingredient,
    required this.imageUrl,
    required this.grams
  });

  factory IngredientListItem.fromJson(Map<String, dynamic> json) {
    return IngredientListItem(
      ingredient: json['ingredient'],
      imageUrl: json['imageUrl'],
      grams: json['grams'],
    );
  }
}
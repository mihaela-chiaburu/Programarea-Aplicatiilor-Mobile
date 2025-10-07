import 'package:recipes_app/list_items/list_item.dart';

class IngredientListItem extends ListItem{
  final String ingredient;
  final String imageUrl;
  final String grams;

  IngredientListItem({
    required this.ingredient,
    required this.imageUrl,
    required this.grams
  });
}
import 'package:recipes_app/list_items/ingredient_list_item.dart';
import 'package:recipes_app/list_items/list_item.dart';

class IngredientRowListItem extends ListItem {
  final List<IngredientListItem> ingredients;

  IngredientRowListItem({required this.ingredients});
}

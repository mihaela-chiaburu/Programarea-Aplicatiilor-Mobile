import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/recipe_select_list_item.dart';

class RecipeRowListItem extends ListItem {
  final List<RecipeSelectListItem> recipes;

  RecipeRowListItem({required this.recipes});
}

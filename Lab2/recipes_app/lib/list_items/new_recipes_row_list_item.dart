import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/new_recipes_list_item.dart';

class NewRecipesRowListItem extends ListItem {
  final List<NewRecipesListItem> newrecipes;

  NewRecipesRowListItem({required this.newrecipes});
}

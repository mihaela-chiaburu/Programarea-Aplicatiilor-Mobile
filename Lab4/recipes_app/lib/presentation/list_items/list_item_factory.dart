import 'package:recipes_app/presentation/list_items/follow_author_list_item.dart';
import 'package:recipes_app/presentation/list_items/ingredient_list_item.dart';
import 'package:recipes_app/presentation/list_items/list_item.dart';
import 'package:recipes_app/presentation/list_items/nav_bar_list_item.dart';
import 'package:recipes_app/presentation/list_items/cuisine_select_list_item.dart';
import 'package:recipes_app/presentation/list_items/recipe_name_list_item.dart';
import 'package:recipes_app/presentation/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/presentation/list_items/new_recipes_list_item.dart';
import 'package:recipes_app/presentation/list_items/serve_list_item.dart';
import 'package:recipes_app/presentation/list_items/text_section_list_item.dart';

class ListItemFactory {
  static ListItem fromJson(String type, Map<String, dynamic> json) {
    switch(type) {
      case 'navbar': return NavBarListItem.fromJson(json);
      case 'cuisine': return CuisineSelectListItem.fromJson(json);
      case 'recipe': return RecipeSelectListItem.fromJson(json);
      case 'newRecipe': return NewRecipesListItem.fromJson(json);
      case 'recipeName' : return RecipeNameListItem.fromJson(json);
      case 'author' : return FollowAuthorListItem.fromJson(json);
      case 'serve' : return ServeListItem.fromJson(json);
      case 'ingredients' : return IngredientListItem.fromJson(json);
      case 'textSection' : return TextSectionListItem.fromJson(json);
      default: throw Exception('Unknown list item type: $type');
    }
  }
}

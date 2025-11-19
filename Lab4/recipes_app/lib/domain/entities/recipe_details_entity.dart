import 'recipe_entity.dart';
import 'chef_entity.dart';
import 'ingredient_entity.dart';

class TabEntity {
  final String name;
  final bool active;

  TabEntity({
    required this.name,
    required this.active,
  });
}

class ServingEntity {
  final String serves;
  final int totalItems;

  ServingEntity({
    required this.serves,
    required this.totalItems,
  });
}

class RecipeDetailsEntity {
  final RecipeEntity recipe;
  final ChefEntity chef;
  final List<TabEntity> tabs;
  final ServingEntity serving;
  final List<IngredientEntity> ingredients;

  RecipeDetailsEntity({
    required this.recipe,
    required this.chef,
    required this.tabs,
    required this.serving,
    required this.ingredients,
  });
}


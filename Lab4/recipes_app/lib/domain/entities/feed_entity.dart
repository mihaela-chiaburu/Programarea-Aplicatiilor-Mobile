import 'user_entity.dart';
import 'filters_entity.dart';
import 'recipe_entity.dart';
import 'new_recipe_entity.dart';

class FeedEntity {
  final UserEntity user;
  final FiltersEntity filters;
  final List<RecipeEntity> recipes;
  final List<NewRecipeEntity> newRecipes;

  FeedEntity({
    required this.user,
    required this.filters,
    required this.recipes,
    required this.newRecipes,
  });
}


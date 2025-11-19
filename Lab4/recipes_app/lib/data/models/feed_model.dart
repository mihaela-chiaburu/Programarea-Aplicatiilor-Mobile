import '../../domain/entities/feed_entity.dart';
import 'user_model.dart';
import 'filters_model.dart';
import 'recipe_model.dart';
import 'new_recipe_model.dart';

class FeedModel extends FeedEntity {
  FeedModel({
    required super.user,
    required super.filters,
    required super.recipes,
    required super.newRecipes,
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      user: UserModel.fromJson(json['user']),
      filters: FiltersModel.fromJson(json['filters']),
      recipes: (json['recipes'] as List)
          .map((e) => RecipeModel.fromJson(e))
          .toList(),
      newRecipes: (json['new_recipes'] as List)
          .map((e) => NewRecipeModel.fromJson(e))
          .toList(),
    );
  }
}


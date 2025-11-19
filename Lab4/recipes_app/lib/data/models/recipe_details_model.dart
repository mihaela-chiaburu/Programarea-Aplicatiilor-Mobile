import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/recipe_details_entity.dart';
import '../../domain/entities/recipe_entity.dart';
import 'chef_model.dart';
import 'ingredient_model.dart';

part 'recipe_details_model.g.dart';

@JsonSerializable()
class TabModel extends TabEntity {
  TabModel({
    required super.name,
    required super.active,
  });

  factory TabModel.fromJson(Map<String, dynamic> json) =>
      _$TabModelFromJson(json);

  Map<String, dynamic> toJson() => _$TabModelToJson(this);
}

@JsonSerializable()
class ServingModel extends ServingEntity {
  ServingModel({
    required super.serves,
    @JsonKey(name: 'total_items') required super.totalItems,
  });

  factory ServingModel.fromJson(Map<String, dynamic> json) =>
      _$ServingModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServingModelToJson(this);
}

// Special recipe model for details page (has title and cook_time instead of name and time)
class RecipeDetailsRecipeModel extends RecipeEntity {
  RecipeDetailsRecipeModel({
    required super.id,
    required super.name,
    required super.rating,
    required super.time,
    required super.isBookmarked,
    required super.image,
  });

  factory RecipeDetailsRecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailsRecipeModel(
      id: json['id'],
      name: json['title'] ?? '',
      rating: (json['rating'] as num).toDouble(),
      time: json['cook_time'] ?? '',
      isBookmarked: json['is_bookmarked'] ?? false,
      image: json['image'] ?? '',
    );
  }
}

class RecipeDetailsModel extends RecipeDetailsEntity {
  RecipeDetailsModel({
    required super.recipe,
    required super.chef,
    required super.tabs,
    required super.serving,
    required super.ingredients,
  });

  factory RecipeDetailsModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailsModel(
      recipe: RecipeDetailsRecipeModel.fromJson(json['recipe']),
      chef: ChefModel.fromJson(json['chef']),
      tabs: (json['tabs'] as List)
          .map((e) => TabModel.fromJson(e))
          .toList(),
      serving: ServingModel.fromJson(json['serving']),
      ingredients: (json['ingredients'] as List)
          .map((e) => IngredientModel.fromJson(e))
          .toList(),
    );
  }
}


import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/recipe_entity.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class RecipeModel extends RecipeEntity {
  RecipeModel({
    required super.id,
    required super.name,
    required super.rating,
    required super.time,
    @JsonKey(name: 'is_bookmarked') required super.isBookmarked,
    required super.image,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);
}


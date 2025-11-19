import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/new_recipe_entity.dart';

part 'new_recipe_model.g.dart';

@JsonSerializable()
class NewRecipeModel extends NewRecipeEntity {
  NewRecipeModel({
    required super.id,
    required super.name,
    required super.rating,
    required super.author,
    required super.time,
    required super.image,
    @JsonKey(name: 'author_image') required super.authorImage,
  });

  factory NewRecipeModel.fromJson(Map<String, dynamic> json) =>
      _$NewRecipeModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewRecipeModelToJson(this);
}


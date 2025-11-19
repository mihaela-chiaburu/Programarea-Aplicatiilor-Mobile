import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/ingredient_entity.dart';

part 'ingredient_model.g.dart';

@JsonSerializable()
class IngredientModel extends IngredientEntity {
  IngredientModel({
    required super.id,
    required super.name,
    required super.quantity,
    required super.icon,
  });

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientModelFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientModelToJson(this);
}


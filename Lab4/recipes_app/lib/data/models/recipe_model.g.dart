// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => RecipeModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  rating: (json['rating'] as num).toDouble(),
  time: json['time'] as String,
  isBookmarked: json['is_bookmarked'] as bool,
  image: json['image'] as String,
);

Map<String, dynamic> _$RecipeModelToJson(RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'time': instance.time,
      'is_bookmarked': instance.isBookmarked,
      'image': instance.image,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewRecipeModel _$NewRecipeModelFromJson(Map<String, dynamic> json) =>
    NewRecipeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      author: json['author'] as String,
      time: json['time'] as String,
      image: json['image'] as String,
      authorImage: json['author_image'] as String,
    );

Map<String, dynamic> _$NewRecipeModelToJson(NewRecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'author': instance.author,
      'time': instance.time,
      'image': instance.image,
      'author_image': instance.authorImage,
    };

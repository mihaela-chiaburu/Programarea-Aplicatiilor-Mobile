// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabModel _$TabModelFromJson(Map<String, dynamic> json) =>
    TabModel(name: json['name'] as String, active: json['active'] as bool);

Map<String, dynamic> _$TabModelToJson(TabModel instance) => <String, dynamic>{
  'name': instance.name,
  'active': instance.active,
};

ServingModel _$ServingModelFromJson(Map<String, dynamic> json) => ServingModel(
  serves: json['serves'] as String,
  totalItems: (json['total_items'] as num).toInt(),
);

Map<String, dynamic> _$ServingModelToJson(ServingModel instance) =>
    <String, dynamic>{
      'serves': instance.serves,
      'total_items': instance.totalItems,
    };

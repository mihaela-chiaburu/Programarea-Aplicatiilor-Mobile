// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefModel _$ChefModelFromJson(Map<String, dynamic> json) => ChefModel(
  name: json['name'] as String,
  profileImage: json['profile_image'] as String,
  location: json['location'] as String,
  isFollowing: json['is_following'] as bool,
);

Map<String, dynamic> _$ChefModelToJson(ChefModel instance) => <String, dynamic>{
  'name': instance.name,
  'profile_image': instance.profileImage,
  'location': instance.location,
  'is_following': instance.isFollowing,
};

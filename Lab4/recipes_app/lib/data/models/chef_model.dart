import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/chef_entity.dart';

part 'chef_model.g.dart';

@JsonSerializable()
class ChefModel extends ChefEntity {
  ChefModel({
    required super.name,
    @JsonKey(name: 'profile_image') required super.profileImage,
    required super.location,
    @JsonKey(name: 'is_following') required super.isFollowing,
  });

  factory ChefModel.fromJson(Map<String, dynamic> json) =>
      _$ChefModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChefModelToJson(this);
}


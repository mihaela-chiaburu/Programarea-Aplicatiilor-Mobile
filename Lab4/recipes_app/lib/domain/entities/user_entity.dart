class UserEntity {
  final String name;
  final String profileImage;
  final String? greeting;

  UserEntity({
    required this.name,
    required this.profileImage,
    this.greeting,
  });
}


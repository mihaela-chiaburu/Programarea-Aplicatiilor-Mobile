class RecipeEntity {
  final int id;
  final String name;
  final double rating;
  final String time;
  final bool isBookmarked;
  final String image;

  RecipeEntity({
    required this.id,
    required this.name,
    required this.rating,
    required this.time,
    required this.isBookmarked,
    required this.image,
  });
}


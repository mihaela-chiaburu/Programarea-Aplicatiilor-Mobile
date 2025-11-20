class Recipe{
  final String recipeName;
  final String imageUrl;
  final String time;

  Recipe({
    required this.recipeName, 
    required this.imageUrl,
    required this.time,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      recipeName: json['recipeName'],
      imageUrl: json['imageUrl'],
      time: json['time'],
    );
  }
}
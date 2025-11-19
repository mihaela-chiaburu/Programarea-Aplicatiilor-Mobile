import 'dart:ui';

import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/utils/color_utils.dart';

class RecipeSelectListItem extends ListItem{
  final Recipe recipe;
  final String rating;
  final Color bookmarks;

  RecipeSelectListItem({
    required this.recipe,
    required this.rating,
    required this.bookmarks
  });

  factory RecipeSelectListItem.fromJson(Map<String, dynamic> json) {
    return RecipeSelectListItem(
      recipe: Recipe.fromJson(json),
      rating: json['rating'],
      bookmarks: parseColor(json['bookmarksColor']),
    );
  }
}
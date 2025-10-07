import 'dart:ui';

import 'package:recipes_app/list_items/list_item.dart';

class RecipeSelectListItem extends ListItem{
  final String recipeName;
  final String imageUrl;
  final String rating;
  final String time;
  final Color bookmarks;

  RecipeSelectListItem({
    required this.recipeName,
    required this.imageUrl,
    required this.rating,
    required this.time,
    required this.bookmarks
  });
}
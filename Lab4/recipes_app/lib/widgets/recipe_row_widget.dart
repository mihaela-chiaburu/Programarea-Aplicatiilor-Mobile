import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/widgets/recipe_widget.dart';

class RecipeRowWidget extends StatelessWidget {
  const RecipeRowWidget({super.key, required this.item});

  final RecipeRowListItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: item.recipes
              .map((recipe) => RecipeWidget(item: recipe))
              .toList(),
        ),
      ),
    );
  }
}

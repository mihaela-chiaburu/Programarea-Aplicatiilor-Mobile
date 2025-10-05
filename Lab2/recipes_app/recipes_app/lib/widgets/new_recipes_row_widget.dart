import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/new_recipes_row_list_item.dart';
import 'package:recipes_app/widgets/new_recipe_widget.dart';

class NewRecipesRowWidget extends StatelessWidget {
  const NewRecipesRowWidget({super.key, required this.item});

  final NewRecipesRowListItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: item.newrecipes
              .map((newrecipe) => NewRecipeWidget(item: newrecipe))
              .toList(),
        ),
      ),
    );
  }
}

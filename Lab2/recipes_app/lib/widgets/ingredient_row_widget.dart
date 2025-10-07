import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/ingredient_row_list_item.dart';
import 'package:recipes_app/widgets/ingredient_widget.dart';

class IngredientRowWidget extends StatelessWidget {
  const IngredientRowWidget({super.key, required this.item});

  final IngredientRowListItem item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: item.ingredients
            .map((ingredient) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: IngredientWidget(item: ingredient),
                ))
            .toList(),
      ),
    );
  }
}

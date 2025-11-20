import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/presentation/widgets/cuisine_select_widget.dart';

class CuisineRowWidget extends StatelessWidget {
  const CuisineRowWidget({super.key, required this.item});

  final CuisineRowListItem item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item.cuisines
            .map((cuisine) => CuisineSelectWidget(item: cuisine))
            .toList(),
      ),
    );
  }
}

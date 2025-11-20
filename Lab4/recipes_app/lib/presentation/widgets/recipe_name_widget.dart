import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/recipe_name_list_item.dart';
import 'package:recipes_app/presentation/resources/app_colors.dart';

class RecipeNameWidget extends StatelessWidget {
  const RecipeNameWidget({super.key, required this.item});

  final RecipeNameListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            item.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          flex: 0,
          child: Text(
            '(${item.views})',
            style: TextStyle(
              color: AppColors.grey4,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

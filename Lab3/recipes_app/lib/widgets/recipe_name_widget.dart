import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/recipe_name_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/strings.dart';

class RecipeNameWidget extends StatelessWidget {
  const RecipeNameWidget({super.key, required this.item});

  final RecipeNameListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[ 
        Container(
          height: 41,
          width: 194,
          child: Text(
            item.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
      Text(
        '(${item.views} ${Strings.reviews})',
        style: TextStyle(
          color: AppColors.grey4,
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      )
      ]
    );
  }
}

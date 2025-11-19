import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/ingredient_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/strings.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({super.key, required this.item});

  final IngredientListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 315,
      decoration: BoxDecoration(
        color: AppColors.neutralgray,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 15,
          right: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(item.imageUrl),
                ),
                SizedBox(width: 16),
                Text(
                  item.ingredient,
                  style: TextStyle(
                    color: AppColors.authorname,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              '${item.grams}${Strings.grams}',
              style: TextStyle(
                color: AppColors.grey4,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

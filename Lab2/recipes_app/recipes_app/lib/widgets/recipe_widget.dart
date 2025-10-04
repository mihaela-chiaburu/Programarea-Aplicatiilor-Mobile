import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key, required this.item});

  final RecipeSelectListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 150,
            height: 176,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.neutralgray,
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 16,
                children: [
                  Container(
                    width: 130,
                    height: 42,
                    child: Text(
                      //"Classic Greek Salad",
                      item.recipeName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.grey3,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "${item.time} Mins",
                            style: TextStyle(
                              color: AppColors.grey3,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      AppIcons.bookmark,
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -65,
            left: -5,
            child: Image.asset(
              item.imageUrl,
              height: 160,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: -24,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.bgrating,
              ),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
              child: Row(
                children: [
                  Icon(Icons.star, size: 10, color: AppColors.star),
                  Text(
                    item.rating,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

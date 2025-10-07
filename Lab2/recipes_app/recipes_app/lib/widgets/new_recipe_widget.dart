import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/new_recipes_list_item.dart';
import 'package:recipes_app/pages/recipe_page.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';

class NewRecipeWidget extends StatelessWidget {
  const NewRecipeWidget({super.key, required this.item});

  final NewRecipesListItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipePage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 251,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey2,
                    blurRadius: 12,
                    spreadRadius: -2,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 9.3,
                  right: 9.3,
                  bottom: 10,
                  top: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 145,
                      child: Text(
                        item.recipeName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.grey3,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(item.avatarUrl),
                            SizedBox(width: 8),
                            Text(
                              "By ${item.authorName}",
                              style: TextStyle(
                                color: AppColors.grey4,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AppIcons.timer,
                            SizedBox(width: 5),
                            Text(
                              "${item.time} mins",
                              style: TextStyle(
                                color: AppColors.grey4,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -46,
              right: -15,
              child: Image.asset(
                item.imageUrl,
                height: 130,
                width: 130,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

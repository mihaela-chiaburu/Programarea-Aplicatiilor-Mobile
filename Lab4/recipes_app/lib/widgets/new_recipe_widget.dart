import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/new_recipes_list_item.dart';
import 'package:recipes_app/pages/recipe_page.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';
import 'package:recipes_app/resources/strings.dart';

class NewRecipeWidget extends StatelessWidget {
  Widget _buildNetworkImage(String url, {double? height, double? width, BoxFit? fit}) {
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return Image.network(
        url,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: height,
            width: width,
            color: Colors.grey[300],
            child: const Icon(Icons.error),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: height,
            width: width,
            color: Colors.grey[200],
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          );
        },
      );
    } else {
      return Image.asset(
        url,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: height,
            width: width,
            color: Colors.grey[300],
            child: const Icon(Icons.error),
          );
        },
      );
    }
  }
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
                padding: const EdgeInsets.only(
                  left: 9.3,
                  right: 9.3,
                  bottom: 10,
                  top: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Container(
                        width: 145,
                        child: Text(
                          item.newrecipe.recipeName,
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
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                        Icon(Icons.star, size: 12, color: AppColors.star),
                      ],
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: _buildNetworkImage(
                                    item.avatarUrl,
                                    height: 24,
                                    width: 24,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    "${Strings.by} ${item.authorName}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: AppColors.grey4,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppIcons.timer,
                                const SizedBox(width: 5),
                                Text(
                                  item.newrecipe.time,
                                  style: TextStyle(
                                    color: AppColors.grey4,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -15,
              left: 162,
              child: SizedBox(
                width: 80,
                height: 80,
                child: ClipOval(
                  child: _buildNetworkImage(
                    item.newrecipe.imageUrl,
                    height: 86,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

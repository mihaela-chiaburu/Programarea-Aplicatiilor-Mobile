import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/strings.dart';

class RecipeWidget extends StatelessWidget {
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
                      item.recipe.recipeName,
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
                            Strings.time,
                            style: TextStyle(
                              color: AppColors.grey4,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            item.recipe.time,
                            style: TextStyle(
                              color: AppColors.grey3,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.bookmark_outline_rounded,
                          size: 15,
                          color: item.bookmarks,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -45,
            left: 22,
            child: SizedBox(
              width: 109,
              height: 110,
              child: ClipOval(
                child: _buildNetworkImage(
                  item.recipe.imageUrl,
                  height: 110,
                  width: 109,
                  fit: BoxFit.cover,
                ),
              ),
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

import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/baner_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';
import 'package:recipes_app/resources/strings.dart';

class BanerWidget extends StatelessWidget {
  const BanerWidget({super.key, required this.item});

  final BanerListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // Layer 1: Image at the bottom
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: item.imageUrl != null && 
                   (item.imageUrl!.startsWith('http://') || item.imageUrl!.startsWith('https://'))
                ? Image.network(
                    item.imageUrl!,
                    width: 315,
                    height: 150,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'resources/icons/baner.png',
                        width: 315,
                        height: 150,
                        fit: BoxFit.cover,
                      );
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        width: 315,
                        height: 150,
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  )
                : Image.asset(
                    'resources/icons/baner.png',
                    width: 315,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
          ),
          
          // Layer 2: Gradient overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.5), 
                  Colors.transparent,
                ],
              ),
            ),
          ),
          
          // Layer 3: UI elements (rating, timer, bookmark)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.bgrating,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, size: 10, color: AppColors.star),
                        Text(
                          Strings.bannerRating,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppIcons.timer,
                    const SizedBox(width: 5),
                    Text(
                      Strings.bannerTime,
                      style: TextStyle(
                        color: AppColors.neutralgray,
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    AppIcons.bookmark,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
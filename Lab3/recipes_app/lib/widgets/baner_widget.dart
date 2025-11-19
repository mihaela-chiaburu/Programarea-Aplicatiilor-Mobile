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
        image: const DecorationImage(
          image: AssetImage('resources/icons/baner.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [ 
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
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
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
                  SizedBox(width: 5),
                  Text(
                    Strings.bannerTime,
                    style: TextStyle(
                      color: AppColors.neutralgray,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10),
                  AppIcons.bookmark,
                ],),
            ],
          ),
        ),
        ]
      ),
    );
  }
}

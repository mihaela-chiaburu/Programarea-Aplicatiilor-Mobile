import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/nav_bar_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/strings.dart';

class TopNavBarWidget extends StatelessWidget {
  const TopNavBarWidget({super.key, required this.item});

  final NavBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${Strings.greatings} ${item.username}",
                    style: const TextStyle(
                      color: AppColors.neutral650,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    Strings.question,
                    style: TextStyle(
                      color: AppColors.grey4,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40), // Space for positioned image
            ],
          ),
          Positioned(
            top: 10,
            //bottom: 200,
            left: 285,
            child: SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: item.image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

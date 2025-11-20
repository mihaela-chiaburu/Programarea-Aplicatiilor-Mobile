import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/search_bar_list_item.dart';
import 'package:recipes_app/presentation/resources/app_colors.dart';
import 'package:recipes_app/presentation/resources/app_icons.dart';
import 'package:recipes_app/presentation/resources/strings.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.item});

  final SearchBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 11, top: 11),
            width: 255,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(width: 1.3, color: AppColors.neutralgray),
            ),
            child: Row(
              children: [
                AppIcons.searchVisualIcon,
                SizedBox(width: 10),
                Text(
                  Strings.searchrecipe,
                  style: TextStyle(
                    color: AppColors.neutralgray,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          AppIcons.filter,
        ],
      ),
    );
  }
}

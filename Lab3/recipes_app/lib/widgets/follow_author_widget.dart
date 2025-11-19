import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/follow_author_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';
import 'package:recipes_app/resources/strings.dart';

class FollowAuthorWidget extends StatelessWidget {
  const FollowAuthorWidget({super.key, required this.item});

  final FollowAuthorListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppIcons.author,
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.username,
                  style: const TextStyle(
                    color: AppColors.authorname,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    AppIcons.location,
                    SizedBox(width: 1),
                    Text(
                      item.location,
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.greenbutton,
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text(
            Strings.followButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

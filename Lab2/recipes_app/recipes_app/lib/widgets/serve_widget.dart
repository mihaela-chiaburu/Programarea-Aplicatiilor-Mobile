import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/serve_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
import 'package:recipes_app/resources/app_icons.dart';

class ServeWidget extends StatelessWidget {
  const ServeWidget({super.key, required this.item});

  final ServeListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppIcons.serves,
            SizedBox(width: 5,),
            Text(
              '${item.serves} serve',
              style: TextStyle(
                color: AppColors.grey4,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Text(
          '${item.nritems} Items',
          style: TextStyle(
            color: AppColors.grey4,
            fontSize: 11,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/text_section_list_item.dart';
import 'package:recipes_app/presentation/resources/app_colors.dart';
import 'package:recipes_app/presentation/resources/strings.dart';

class TextSectionWidget extends StatelessWidget {
  const TextSectionWidget({super.key, required this.item});

  final TextSectionListItem item;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.newrecipes,
        style: TextStyle(
          color: AppColors.neutral650,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

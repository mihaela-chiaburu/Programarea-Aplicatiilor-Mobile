import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/cuisine_select_list_item.dart';

class CuisineSelectWidget extends StatelessWidget {
  const CuisineSelectWidget({super.key, required this.item});

  final CuisineSelectListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: item.bgColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      child: Text(
        item.textButton,
        style: TextStyle(
          color: item.textColor,
          fontSize: 11,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

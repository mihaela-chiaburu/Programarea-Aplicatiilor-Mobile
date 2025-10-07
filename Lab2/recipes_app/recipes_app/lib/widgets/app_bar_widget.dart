import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/app_bar_list_item.dart';
import 'package:svg_flutter/svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.item});

  final AppBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('resources/icons/arrow-left.svg'),
        SvgPicture.asset('resources/icons/more.svg'),
      ],
    );
  }
}

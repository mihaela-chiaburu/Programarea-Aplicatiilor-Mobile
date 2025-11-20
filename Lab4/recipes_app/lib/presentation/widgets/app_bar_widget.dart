import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/app_bar_list_item.dart';
import 'package:recipes_app/presentation/pages/main_page.dart';
import 'package:recipes_app/presentation/resources/app_icons.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.item});

  final AppBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
          child: AppIcons.leftarrow
        ),
        AppIcons.more,
      ],
    );
  }
}

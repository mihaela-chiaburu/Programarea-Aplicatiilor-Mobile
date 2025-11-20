import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/list_items/sized_box_list_item.dart';


class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key, required this.item});

  final SizedBoxListItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: item.size);
  }
}

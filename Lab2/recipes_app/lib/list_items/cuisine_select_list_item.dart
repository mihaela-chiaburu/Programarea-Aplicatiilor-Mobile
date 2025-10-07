import 'package:recipes_app/list_items/list_item.dart';
import 'package:flutter/material.dart';

class CuisineSelectListItem extends ListItem{
  final Color bgColor;
  final Color textColor;
  final String textButton;

  CuisineSelectListItem({
    required this.bgColor,
    required this.textColor,
    required this.textButton
  });
}
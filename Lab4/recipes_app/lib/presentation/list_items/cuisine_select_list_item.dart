import 'package:recipes_app/presentation/list_items/list_item.dart';
import 'package:recipes_app/presentation/utils/color_utils.dart';
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

  factory CuisineSelectListItem.fromJson(Map<String, dynamic> json) {
    return CuisineSelectListItem(
      bgColor: parseColor(json['bgColor']),
      textColor: parseColor(json['textColor']),
      textButton: json['textButton'],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:recipes_app/presentation/list_items/list_item.dart';

class NavBarListItem extends ListItem{
  final String username;
  final Widget image;

  NavBarListItem({
    required this.username,
    required this.image
  });

  factory NavBarListItem.fromJson(Map<String, dynamic> json) {
    return NavBarListItem(
      username: json['username'],
      image: Image.asset(json['image']),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:recipes_app/list_items/list_item.dart';

class NavBarListItem extends ListItem{
  final String username;
  final Widget image;

  NavBarListItem({
    required this.username,
    required this.image
  });
}
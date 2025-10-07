import 'package:flutter/cupertino.dart';
import 'package:recipes_app/list_items/list_item.dart';

class FollowAuthorListItem extends ListItem{
  final String username;
  final Widget image;
  final String location;

  FollowAuthorListItem({
    required this.username,
    required this.image,
    required this.location
  });
}
import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/cuisine_select_list_item.dart';

class CuisineRowListItem extends ListItem {
  final List<CuisineSelectListItem> cuisines;

  CuisineRowListItem({required this.cuisines});
}

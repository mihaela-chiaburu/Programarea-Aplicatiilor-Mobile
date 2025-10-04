import 'package:get/get.dart';
import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/resources/app_icons.dart';
import '../list_items/nav_bar_list_item.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    addItems();
  }

  void addItems() {
    items.add(NavBarListItem(username: 'Jega', image: AppIcons.avatarIcon));
  }

}
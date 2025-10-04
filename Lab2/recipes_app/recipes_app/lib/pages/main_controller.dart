import 'package:get/get.dart';
import 'package:recipes_app/list_items/cuisine_select_list_item.dart';
import 'package:recipes_app/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/list_items/search_bar_list_item.dart';
import 'package:recipes_app/list_items/sized_box_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';
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
    items.add(SizedBoxListItem(size: 30.0));
    items.add(SearchBarListItem());
    items.add(SizedBoxListItem(size: 25.0));
    items.add(CuisineRowListItem(
      cuisines: [
        CuisineSelectListItem(bgColor: AppColors.greenbutton, textColor: AppColors.white, textButton: 'All'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Indian'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Italian'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Asian'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Chinese'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Fruit'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Vegetables'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Protein'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Cereal'),
        CuisineSelectListItem(bgColor: AppColors.white, textColor: AppColors.greentext, textButton: 'Local Dishes'),
      ]
    ));
    //items.add(SizedBoxListItem(size: 40.0));
    items.add(RecipeRowListItem(
      recipes: [
        RecipeSelectListItem(recipeName: 'Classic Greek Salad', imageUrl: 'resources/icons/salad.png', rating: '4.5', time: '15'),
        RecipeSelectListItem(recipeName: 'Crunchy Nut Coleslaw', imageUrl: 'resources/icons/nut_salad.png', rating: '3.5', time: '10'),
        RecipeSelectListItem(recipeName: 'Shrimp Chicken Andouille', imageUrl: 'resources/icons/shrimp_chicken.png', rating: '4.5', time: '10'),
        RecipeSelectListItem(recipeName: 'Barbecue Chicken Jollof', imageUrl: 'resources/icons/barbecue.png', rating: '4.5', time: '10'),
        RecipeSelectListItem(recipeName: 'Portuguese Piri Piri Chicken', imageUrl: 'resources/icons/piri_piri.png', rating: '4.5', time: '15'),
      ]
    ));
  }

}
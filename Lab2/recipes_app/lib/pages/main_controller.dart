import 'package:get/get.dart';
import 'package:recipes_app/list_items/cuisine_select_list_item.dart';
import 'package:recipes_app/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/new_recipes_list_item.dart';
import 'package:recipes_app/list_items/new_recipes_row_list_item.dart';
import 'package:recipes_app/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/list_items/search_bar_list_item.dart';
import 'package:recipes_app/list_items/sized_box_list_item.dart';
import 'package:recipes_app/list_items/text_section_list_item.dart';
import 'package:recipes_app/models/recipe.dart';
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
    items.add(RecipeRowListItem(
      recipes: [
        RecipeSelectListItem(recipe : Recipe (recipeName: 'Classic Greek Salad', imageUrl: 'resources/icons/salad.png', time: '15'), rating: '4.5', bookmarks: AppColors.greentext),
        RecipeSelectListItem(recipe : Recipe (recipeName: 'Crunchy Nut Coleslaw', imageUrl: 'resources/icons/nut_salad.png', time: '10'), rating: '3.5', bookmarks: AppColors.grey4),
        RecipeSelectListItem(recipe : Recipe (recipeName: 'Shrimp Chicken Andouille', imageUrl: 'resources/icons/shrimp_chicken.png', time: '10'), rating: '4.5', bookmarks: AppColors.grey4),
        RecipeSelectListItem(recipe : Recipe (recipeName: 'Barbecue Chicken Jollof', imageUrl: 'resources/icons/barbecue.png', time: '10'), rating: '4.5', bookmarks: AppColors.greentext),
        RecipeSelectListItem(recipe : Recipe (recipeName: 'Portuguese Piri Piri Chicken', imageUrl: 'resources/icons/piri_piri.png', time: '15'), rating: '4.5', bookmarks: AppColors.grey4),
      ]
    ));
    items.add(SizedBoxListItem(size: 20.0));
    items.add(TextSectionListItem(text: 'New Recipes'));
    items.add(NewRecipesRowListItem(
      newrecipes: [
        NewRecipesListItem(newrecipe : Recipe (recipeName: 'Steak with tomato sauce and bulgur rice.', imageUrl: 'resources/icons/card1.png', time: '20'), authorName: 'James Milner', avatarUrl: 'resources/icons/avatar_card1.png'),
        NewRecipesListItem(newrecipe : Recipe (recipeName: 'Pilaf sweet with lamb-and-raisins', imageUrl: 'resources/icons/card2.png', time: '20'), authorName: 'Laura Wilson', avatarUrl: 'resources/icons/avatar_card2.png'),
        NewRecipesListItem(newrecipe : Recipe (recipeName: 'Rice Pilaf, Broccoli and Chicken', imageUrl: 'resources/icons/card3.png', time: '20'), authorName: 'Lucas Moura', avatarUrl: 'resources/icons/avatar_card3.png'),
        NewRecipesListItem(newrecipe : Recipe (recipeName: 'Chicken meal with sauce', imageUrl: 'resources/icons/card4.png', time: '20'), authorName: 'Issabella Ethan', avatarUrl: 'resources/icons/avatar_card4.png'),
        NewRecipesListItem(newrecipe : Recipe (recipeName: 'Stir-fry chicken with broccoli in sweet and sour sauce and rice.', imageUrl: 'resources/icons/card5.png', time: '20'), authorName: 'Miquel Ferran', avatarUrl: 'resources/icons/avatar_card5.png'),

      ]
    ));
  }

}
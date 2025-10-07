import 'package:get/get.dart';
import 'package:recipes_app/list_items/app_bar_list_item.dart';
import 'package:recipes_app/list_items/baner_list_item.dart';
import 'package:recipes_app/list_items/follow_author_list_item.dart';
import 'package:recipes_app/list_items/ingredient_list_item.dart';
import 'package:recipes_app/list_items/ingredient_procedure_list_item.dart';
import 'package:recipes_app/list_items/ingredient_row_list_item.dart';
import 'package:recipes_app/list_items/list_item.dart';
import 'package:recipes_app/list_items/recipe_name_list_item.dart';
import 'package:recipes_app/list_items/serve_list_item.dart';
import 'package:recipes_app/list_items/sized_box_list_item.dart';
import 'package:recipes_app/resources/app_icons.dart';

class RecipeController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    addItems();
  }

  void addItems() {
    items.add(AppBarListItem());
    items.add(SizedBoxListItem(size: 10));
    items.add(BanerListItem());
    items.add(SizedBoxListItem(size: 10));
    items.add(RecipeNameListItem(text: 'Spicy chicken burger with French fries', views: '13k'));
    items.add(SizedBoxListItem(size: 10));
    items.add(FollowAuthorListItem(username: 'Laura Wilson', image: AppIcons.author, location: 'Lagos, Nigeria'));
    items.add(SizedBoxListItem(size: 20));
    items.add(IngredientProcedureListItem());
    items.add(SizedBoxListItem(size: 35));
    items.add(ServeListItem(serves: '1', nritems: '10'));
    items.add(SizedBoxListItem(size: 20));
    items.add(IngredientRowListItem(
      ingredients: [
        IngredientListItem(ingredient: 'Tomatos', imageUrl: 'resources/icons/ingr1.png', grams: '500'),
        IngredientListItem(ingredient: 'Cabbage', imageUrl: 'resources/icons/ingr2.png', grams: '300'),
        IngredientListItem(ingredient: 'Taco', imageUrl: 'resources/icons/ingr3.png', grams: '300'),
        IngredientListItem(ingredient: 'Slice Bread', imageUrl: 'resources/icons/ingr4.png', grams: '300'),
        IngredientListItem(ingredient: 'Green onion', imageUrl: 'resources/icons/ingr5.png', grams: '300'),
        IngredientListItem(ingredient: 'Omelette', imageUrl: 'resources/icons/ingr6.png', grams: '300'),
        IngredientListItem(ingredient: 'Hot Dog', imageUrl: 'resources/icons/ingr7.png', grams: '300'),
        IngredientListItem(ingredient: 'Oninon', imageUrl: 'resources/icons/ingr8.png', grams: '300'),
        IngredientListItem(ingredient: 'Lettuce', imageUrl: 'resources/icons/ingr9.png', grams: '300'),
        IngredientListItem(ingredient: 'Spinach', imageUrl: 'resources/icons/ingr10.png', grams: '300'),
        IngredientListItem(ingredient: 'Red & Green Chilli', imageUrl: 'resources/icons/ingr11.png', grams: '300'),
        IngredientListItem(ingredient: 'Fries', imageUrl: 'resources/icons/ingr12.png', grams: '300'),
        IngredientListItem(ingredient: 'Chicken', imageUrl: 'resources/icons/ingr13.png', grams: '300'),
        IngredientListItem(ingredient: 'Burger', imageUrl: 'resources/icons/ingr14.png', grams: '300'),
      ]
    ));
  }
}
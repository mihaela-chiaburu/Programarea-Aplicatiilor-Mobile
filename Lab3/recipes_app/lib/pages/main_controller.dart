import 'dart:convert';
import 'package:flutter/services.dart';
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
import '../list_items/nav_bar_list_item.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    final String dataString = await rootBundle.loadString('resources/data/data.json');
    final Map<String, dynamic> jsonData = jsonDecode(dataString);

    items.clear();

    final navbar = NavBarListItem.fromJson(jsonData['navbar']);
    items.add(navbar);

    items.add(SizedBoxListItem(size: 30));
    items.add(SearchBarListItem());
    items.add(SizedBoxListItem(size: 25));

    final cuisines = (jsonData['cuisines'] as List)
        .map((e) => CuisineSelectListItem.fromJson(e))
        .toList();
    items.add(CuisineRowListItem(cuisines: cuisines));

    final recipes = (jsonData['recipes'] as List)
        .map((e) => RecipeSelectListItem.fromJson(e))
        .toList();
    items.add(RecipeRowListItem(recipes: recipes));
    items.add(SizedBoxListItem(size: 20));
  
    final textSection = TextSectionListItem.fromJson(jsonData['textSection']);
    items.add(textSection);

    final newRecipes = (jsonData['newRecipes'] as List)
        .map((e) => NewRecipesListItem.fromJson(e))
        .toList();
    items.add(NewRecipesRowListItem(newrecipes: newRecipes));
  }
}
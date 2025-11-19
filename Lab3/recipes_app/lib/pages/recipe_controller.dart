import 'dart:convert';
import 'package:flutter/services.dart';
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

class RecipeController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }
  
  Future<void> loadData() async {
    final String dataString = await rootBundle.loadString('resources/data/data_recipe_page.json');
    final Map<String, dynamic> jsonData = jsonDecode(dataString);

    items.clear();

    items.add(AppBarListItem());
    items.add(SizedBoxListItem(size: 10));
    items.add(BanerListItem());
    items.add(SizedBoxListItem(size: 10));

    final recipeName = RecipeNameListItem.fromJson(jsonData['recipeName']);
    items.add(recipeName);

    items.add(SizedBoxListItem(size: 10));

    final author = FollowAuthorListItem.fromJson(jsonData['author']);
    items.add(author);

    items.add(SizedBoxListItem(size: 20));
    items.add(IngredientProcedureListItem());
    items.add(SizedBoxListItem(size: 35));

    final serve = ServeListItem.fromJson(jsonData['serve']);
    items.add(serve);
    items.add(SizedBoxListItem(size: 20));

    final ingredients = (jsonData['ingredients'] as List)
        .map((e) => IngredientListItem.fromJson(e))
        .toList();
    items.add(IngredientRowListItem(ingredients: ingredients));
  }
}
import 'package:get/get.dart';
import 'package:recipes_app/domain/usecases/get_recipe_details_usecase.dart';
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
import 'package:flutter/material.dart';

class RecipeController extends GetxController {
  RxList<ListItem> items = RxList();
  final GetRecipeDetailsUseCase getRecipeDetailsUseCase = Get.find<GetRecipeDetailsUseCase>();
  
  var isLoading = true.obs;
  var error = ''.obs;
  
  final int recipeId = 501;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }
  
  Future<void> loadData() async {
    try {
      isLoading.value = true;
      error.value = '';
      
      final recipeDetails = await getRecipeDetailsUseCase(recipeId);

      items.clear();

      items.add(AppBarListItem());
      items.add(SizedBoxListItem(size: 10));
      
      items.add(BanerListItem(imageUrl: recipeDetails.recipe.image));
      items.add(SizedBoxListItem(size: 10));

      final recipeName = RecipeNameListItem(
        text: recipeDetails.recipe.name,
        views: '13k Reviews',
      );
      items.add(recipeName);

      items.add(SizedBoxListItem(size: 10));

      // Chef/Author
      final author = FollowAuthorListItem(
        username: recipeDetails.chef.name,
        image: recipeDetails.chef.profileImage.startsWith('http://') || 
               recipeDetails.chef.profileImage.startsWith('https://')
            ? Image.network(
                recipeDetails.chef.profileImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => 
                  Image.asset(
                    'resources/icons/author.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey[200],
                    child: const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                },
              )
            : Image.asset(
                recipeDetails.chef.profileImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
        location: recipeDetails.chef.location,
      );
      items.add(author);

      items.add(SizedBoxListItem(size: 20));
      items.add(IngredientProcedureListItem());
      items.add(SizedBoxListItem(size: 35));

      // Serving info
      final serve = ServeListItem(
        serves: recipeDetails.serving.serves,
        nritems: recipeDetails.serving.totalItems.toString(),
      );
      items.add(serve);
      items.add(SizedBoxListItem(size: 20));

      // Ingredients
      final ingredients = recipeDetails.ingredients.map((ingredient) {
        return IngredientListItem(
          ingredient: ingredient.name,
          imageUrl: ingredient.icon,
          grams: ingredient.quantity,
        );
      }).toList();
      items.add(IngredientRowListItem(ingredients: ingredients));
      
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      error.value = e.toString();
      print('Error loading recipe details: $e');
    }
  }
}
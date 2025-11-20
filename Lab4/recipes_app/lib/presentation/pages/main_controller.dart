import 'package:get/get.dart';
import 'package:recipes_app/domain/usecases/get_feed_usecase.dart';
import 'package:recipes_app/presentation/list_items/cuisine_select_list_item.dart';
import 'package:recipes_app/presentation/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/presentation/list_items/list_item.dart';
import 'package:recipes_app/presentation/list_items/nav_bar_list_item.dart';
import 'package:recipes_app/presentation/list_items/new_recipes_list_item.dart';
import 'package:recipes_app/presentation/list_items/new_recipes_row_list_item.dart';
import 'package:recipes_app/presentation/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/presentation/list_items/recipe_select_list_item.dart';
import 'package:recipes_app/presentation/list_items/search_bar_list_item.dart';
import 'package:recipes_app/presentation/list_items/sized_box_list_item.dart';
import 'package:recipes_app/presentation/list_items/text_section_list_item.dart';
import 'package:recipes_app/presentation/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();
  final GetFeedUseCase getFeedUseCase = Get.find<GetFeedUseCase>();
  
  var isLoading = true.obs;
  var error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    try {
      isLoading.value = true;
      error.value = '';
      
      final feedEntity = await getFeedUseCase();

      items.clear();

      // NavBar 
      final navbar = NavBarListItem(
        username: feedEntity.user.name,
        image: feedEntity.user.profileImage.startsWith('http://') || 
               feedEntity.user.profileImage.startsWith('https://')
            ? Image.network(
                feedEntity.user.profileImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => 
                  Image.asset(
                    'resources/icons/avatar.png',
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
                feedEntity.user.profileImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
      );
      items.add(navbar);

      items.add(SizedBoxListItem(size: 30));
      items.add(SearchBarListItem());
      items.add(SizedBoxListItem(size: 25));

      // Categories
      final cuisines = feedEntity.filters.categories.map((category) {
        return CuisineSelectListItem(
          bgColor: category.selected 
            ? parseColor('#129575') 
            : Colors.white,
          textColor: category.selected 
            ? Colors.white 
            : parseColor('#71B1A1'),
          textButton: category.name,
        );
      }).toList();
      items.add(CuisineRowListItem(cuisines: cuisines));

      // Recipes
      final recipes = feedEntity.recipes.map((recipe) {
        return RecipeSelectListItem(
          recipe: Recipe(
            recipeName: recipe.name,
            imageUrl: recipe.image,
            time: recipe.time,
          ),
          rating: recipe.rating.toString(),
          bookmarks: recipe.isBookmarked 
            ? parseColor('#71B1A1') 
            : parseColor('#A9A9A9'),
        );
      }).toList();
      items.add(RecipeRowListItem(recipes: recipes));
      items.add(SizedBoxListItem(size: 20));
  
      // Text section
      final textSection = TextSectionListItem(text: 'New Recipes');
      items.add(textSection);

      // New recipes
      final newRecipes = feedEntity.newRecipes.map((newRecipe) {
        return NewRecipesListItem(
          newrecipe: Recipe(
            recipeName: newRecipe.name,
            imageUrl: newRecipe.image,
            time: newRecipe.time,
          ),
          authorName: newRecipe.author,
          avatarUrl: newRecipe.authorImage,
        );
      }).toList();
      items.add(NewRecipesRowListItem(newrecipes: newRecipes));
      
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      error.value = e.toString();
      print('Error loading feed: $e');
    }
  }
}
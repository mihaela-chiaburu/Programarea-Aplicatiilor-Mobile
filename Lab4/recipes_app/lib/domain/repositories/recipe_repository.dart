import '../entities/feed_entity.dart';
import '../entities/recipe_details_entity.dart';

abstract class RecipeRepository {
  Future<FeedEntity> getFeed();
  Future<RecipeDetailsEntity> getRecipeDetails(int recipeId);
}


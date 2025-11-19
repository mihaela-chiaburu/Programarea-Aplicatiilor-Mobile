import '../entities/recipe_details_entity.dart';
import '../repositories/recipe_repository.dart';

class GetRecipeDetailsUseCase {
  final RecipeRepository repository;

  GetRecipeDetailsUseCase(this.repository);

  Future<RecipeDetailsEntity> call(int recipeId) async {
    return await repository.getRecipeDetails(recipeId);
  }
}


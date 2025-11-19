import '../../domain/entities/feed_entity.dart';
import '../../domain/entities/recipe_details_entity.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../datasources/remote/recipe_remote_data_source.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeRemoteDataSource remoteDataSource;

  RecipeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<FeedEntity> getFeed() async {
    try {
      return await remoteDataSource.getFeed();
    } catch (e) {
      throw Exception('Repository error: $e');
    }
  }

  @override
  Future<RecipeDetailsEntity> getRecipeDetails(int recipeId) async {
    try {
      return await remoteDataSource.getRecipeDetails(recipeId);
    } catch (e) {
      throw Exception('Repository error: $e');
    }
  }
}


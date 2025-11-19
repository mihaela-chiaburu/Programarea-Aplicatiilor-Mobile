import '../entities/feed_entity.dart';
import '../repositories/recipe_repository.dart';

class GetFeedUseCase {
  final RecipeRepository repository;

  GetFeedUseCase(this.repository);

  Future<FeedEntity> call() async {
    return await repository.getFeed();
  }
}


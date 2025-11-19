import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../data/datasources/remote/recipe_remote_data_source.dart';
import '../../data/repositories/recipe_repository_impl.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../../domain/usecases/get_feed_usecase.dart';
import '../../domain/usecases/get_recipe_details_usecase.dart';

class InjectionContainer {
  static void init() {
    Get.lazyPut<RecipeRemoteDataSource>(
      () => RecipeRemoteDataSourceImpl(client: http.Client()),
    );

    Get.lazyPut<RecipeRepository>(
      () => RecipeRepositoryImpl(
        remoteDataSource: Get.find<RecipeRemoteDataSource>(),
      ),
    );

    Get.lazyPut<GetFeedUseCase>(
      () => GetFeedUseCase(Get.find<RecipeRepository>()),
    );

    Get.lazyPut<GetRecipeDetailsUseCase>(
      () => GetRecipeDetailsUseCase(Get.find<RecipeRepository>()),
    );
  }
}


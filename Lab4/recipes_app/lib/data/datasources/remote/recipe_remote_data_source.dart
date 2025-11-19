import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/feed_model.dart';
import '../../models/recipe_details_model.dart';

abstract class RecipeRemoteDataSource {
  Future<FeedModel> getFeed();
  Future<RecipeDetailsModel> getRecipeDetails(int recipeId);
}

class RecipeRemoteDataSourceImpl implements RecipeRemoteDataSource {
  final http.Client client;
  static const String baseUrl = 'https://test-api-jlbn.onrender.com/v2';

  RecipeRemoteDataSourceImpl({required this.client});

  @override
  Future<FeedModel> getFeed() async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/feed'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return FeedModel.fromJson(jsonData);
      } else {
        throw Exception('Failed to load feed: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching feed: $e');
    }
  }

  @override
  Future<RecipeDetailsModel> getRecipeDetails(int recipeId) async {
    try {
      final response = await client.get(
        Uri.parse('$baseUrl/feed/details'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return RecipeDetailsModel.fromJson(jsonData);
      } else {
        throw Exception('Failed to load recipe details: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching recipe details: $e');
    }
  }
}


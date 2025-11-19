import '../../domain/entities/filters_entity.dart';
import 'category_model.dart';

class FiltersModel extends FiltersEntity {
  FiltersModel({
    required super.searchPlaceholder,
    required super.categories,
  });

  factory FiltersModel.fromJson(Map<String, dynamic> json) {
    return FiltersModel(
      searchPlaceholder: json['search_placeholder'] ?? '',
      categories: (json['categories'] as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList(),
    );
  }
}


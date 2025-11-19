import 'category_entity.dart';

class FiltersEntity {
  final String searchPlaceholder;
  final List<CategoryEntity> categories;

  FiltersEntity({
    required this.searchPlaceholder,
    required this.categories,
  });
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/presentation/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/presentation/list_items/nav_bar_list_item.dart';
import 'package:recipes_app/presentation/list_items/new_recipes_row_list_item.dart';
import 'package:recipes_app/presentation/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/presentation/list_items/search_bar_list_item.dart';
import 'package:recipes_app/presentation/list_items/sized_box_list_item.dart';
import 'package:recipes_app/presentation/list_items/text_section_list_item.dart';
import 'package:recipes_app/presentation/pages/main_controller.dart';
import 'package:recipes_app/presentation/widgets/cuisinerow_widget.dart';
import 'package:recipes_app/presentation/widgets/new_recipes_row_widget.dart';
import 'package:recipes_app/presentation/widgets/recipe_row_widget.dart';
import 'package:recipes_app/presentation/widgets/search_bar_widget.dart';
import 'package:recipes_app/presentation/widgets/sized_box_widget.dart';
import 'package:recipes_app/presentation/widgets/text_section_widget.dart';
import 'package:recipes_app/presentation/widgets/top_bar_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => MainController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          
          if (controller.error.value.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Error: ${controller.error.value}',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => controller.loadData(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          
          return Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.items[index];
                  if (item is NavBarListItem) {
                    return TopNavBarWidget(item: item);
                  } else if (item is SizedBoxListItem) {
                    return SizedBoxWidget(item: item);
                  } else if (item is SearchBarListItem) {
                    return SearchBarWidget(item: item);
                  } else if (item is CuisineRowListItem) {
                    return CuisineRowWidget(item: item);
                  } else if (item is RecipeRowListItem) {
                    return RecipeRowWidget(item: item);
                  } else if (item is TextSectionListItem) {
                    return TextSectionWidget(item: item);
                  } else if (item is NewRecipesRowListItem) {
                    return NewRecipesRowWidget(item: item);
                  }
                  return const Text('Not found');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
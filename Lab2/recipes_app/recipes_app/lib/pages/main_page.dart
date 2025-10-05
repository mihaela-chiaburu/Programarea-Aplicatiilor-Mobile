import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/list_items/cuisinerow_list_item.dart';
import 'package:recipes_app/list_items/nav_bar_list_item.dart';
import 'package:recipes_app/list_items/new_recipes_row_list_item.dart';
import 'package:recipes_app/list_items/recipe_row_list_item.dart';
import 'package:recipes_app/list_items/search_bar_list_item.dart';
import 'package:recipes_app/list_items/sized_box_list_item.dart';
import 'package:recipes_app/list_items/text_section_list_item.dart';
import 'package:recipes_app/pages/main_controller.dart';
import 'package:recipes_app/widgets/cuisinerow_widget.dart';
import 'package:recipes_app/widgets/new_recipes_row_widget.dart';
import 'package:recipes_app/widgets/recipe_row_widget.dart';
import 'package:recipes_app/widgets/search_bar_widget.dart';
import 'package:recipes_app/widgets/sized_box_widget.dart';
import 'package:recipes_app/widgets/text_section_widget.dart';
import 'package:recipes_app/widgets/top_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

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
      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 30),
        child: Container(
          color: Colors.white,
          child: Obx(
            () => ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.items[index];
                if (item is NavBarListItem) {
                  return TopNavBarWidget(item: item);
                } else if (item is SizedBoxListItem) {
                  return SizedBoxWidget(item: item);
                }
                else if (item is SearchBarListItem) {
                  return SearchBarWidget(item: item);
                }
                else if (item is CuisineRowListItem) {
                  return CuisineRowWidget(item: item);
                }
                else if (item is RecipeRowListItem) {
                  return RecipeRowWidget(item: item);
                }
                else if (item is TextSectionListItem) {
                  return TextSectionWidget(item: item);
                }
                else if (item is NewRecipesRowListItem) {
                  return NewRecipesRowWidget(item: item);
                }
                return Text('Not found');
              },
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/list_items/app_bar_list_item.dart';
import 'package:recipes_app/list_items/baner_list_item.dart';
import 'package:recipes_app/list_items/follow_author_list_item.dart';
import 'package:recipes_app/list_items/ingredient_list_item.dart';
import 'package:recipes_app/list_items/ingredient_procedure_list_item.dart';
import 'package:recipes_app/list_items/recipe_name_list_item.dart';
import 'package:recipes_app/list_items/serve_list_item.dart';
import 'package:recipes_app/list_items/sized_box_list_item.dart';
import 'package:recipes_app/pages/recipe_controller.dart';
import 'package:recipes_app/widgets/app_bar_widget.dart';
import 'package:recipes_app/widgets/baner_widget.dart';
import 'package:recipes_app/widgets/follow_author_widget.dart';
import 'package:recipes_app/widgets/ingredient_procedure_widget.dart';
import 'package:recipes_app/widgets/ingredient_widget.dart';
import 'package:recipes_app/widgets/recipe_name_widget.dart';
import 'package:recipes_app/widgets/serve_widget.dart';
import 'package:recipes_app/widgets/sized_box_widget.dart';


class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => RecipeController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    RecipeController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Container(
          color: Colors.white,
          child: Obx(
            () => ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.items[index];
                if (item is AppBarListItem) {
                  return AppBarWidget(item: item);
                } else if (item is SizedBoxListItem) {
                  return SizedBoxWidget(item: item);
                }else if (item is BanerListItem) {
                  return BanerWidget(item: item);
                }else if (item is RecipeNameListItem) {
                  return RecipeNameWidget(item: item);
                }else if (item is FollowAuthorListItem) {
                  return FollowAuthorWidget(item: item);
                }else if (item is IngredientProcedureListItem) {
                  return IngredientProcedureWidget(item: item);
                }else if (item is ServeListItem) {
                  return ServeWidget(item: item);
                }else if (item is IngredientListItem) {
                  return IngredientWidget(item: item);
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

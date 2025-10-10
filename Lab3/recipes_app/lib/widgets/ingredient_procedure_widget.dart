import 'package:flutter/material.dart';
import 'package:recipes_app/list_items/ingredient_procedure_list_item.dart';
import 'package:recipes_app/resources/app_colors.dart';

class IngredientProcedureWidget extends StatelessWidget {
  const IngredientProcedureWidget({super.key, required this.item});

  final IngredientProcedureListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 33,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.greenbutton,
          ),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
          child: Center(
            child: Text(
              'Ingredient',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(width: 15,),
        Container(
          height: 33,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
          child: Center(
            child: Text(
              'Procedure',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.greentext,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

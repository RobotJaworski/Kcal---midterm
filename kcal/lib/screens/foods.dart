import 'package:flutter/material.dart';
import 'package:kcal/model/foodItemModel.dart';
import 'package:kcal/widgets/foodItem.dart';

class foods extends StatelessWidget {
  const foods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.builder(
          itemBuilder: (context, i) => FoodItem(i),
          itemCount: FoodIconList.length,
        ),
      ),
    );
  }
}

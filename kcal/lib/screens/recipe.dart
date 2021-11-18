import 'package:flutter/material.dart';
import 'package:kcal/model/recipe.dart';
import 'package:kcal/widgets/card.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: ListView.builder(
              itemBuilder: (context, i) => RecipeItem(i),
              itemCount: RecipeList.length,
            ),
          ),
        ),
      ),
    );
  }
}

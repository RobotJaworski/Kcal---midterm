import 'package:flutter/material.dart';
import 'package:kcal/model/foodItemModel.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:kcal/screens/cookies.dart';
import 'package:kcal/screens/burger.dart';

class FoodItem extends StatelessWidget {
  final int index;
  FoodItem(this.index);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        if (FoodIconList[index].label == "Cookie") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CookieScreen()));
        } else if (FoodIconList[index].label == "Burger") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Burger()));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          height: 70,
          color: Color(0xffFFFBEF),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(FoodIconList[index].imageUrl),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(FoodIconList[index].label),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

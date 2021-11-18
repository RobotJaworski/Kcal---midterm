import 'package:flutter/material.dart';
import 'package:kcal/model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.contain),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black45, fontSize: 18),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}

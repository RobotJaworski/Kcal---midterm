import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Recipe", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bangus.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.35),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.schedule,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text(
                            '15 min',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.people,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text(
                            '3 Serve',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 40),
                          Container(
                            child: RatingBar(
                              initialRating: 3,
                              itemSize: 20,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: Icon(Icons.star, color: Colors.yellow),
                                half:
                                    Icon(Icons.star_half, color: Colors.yellow),
                                empty: Icon(Icons.star_border_outlined,
                                    color: Colors.yellow),
                              ),
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Crispy Garlic Bangus',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 120),
                        InkWell(
                          child: RatingBar(
                            initialRating: 0,
                            itemSize: 30,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 1,
                            ratingWidget: RatingWidget(
                              full: Icon(Icons.favorite, color: Colors.red),
                              half: Icon(Icons.favorite, color: Colors.red),
                              empty: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Crispy Garlic Bangus has always been a favorite in my household. Touted as the Philippines’ national fish, milkfish, or bangus as we more commonly refer to it as, is a Filipino favorite without question. There’s a rich creaminess to bangus that you can’t get in any other fish, and it’s something people both young and old enjoy. Whether you’re having it to start up your day or enjoying it at the end of a long one, you can always count on bangus to be a reliable companion in the kitchen. ',
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/bangusbelly.png"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Bangus Belly"),
                                    Text("1 Piece"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/garlec.png"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Crushed Garlic"),
                                    Text("8 cloves"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/corn.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Cornstarch"),
                                    Text("2 tbps"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/oil.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Cooking Oil"),
                                    Text("3/4 tbps"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/rice.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Leftover Rice"),
                                    Text("4 cups"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/salt.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("Salt"),
                                    Text("2 1/2 tbps"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "Direction",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                        "Step 1 \n Start by rubbing 1 ½ teaspoons of salt all over the bangus belly. Set it aside."),
                    SizedBox(height: 20),
                    Text(
                        "Step 2 \n Make the garlic infused oil. Pour oil into a pan. Add the crushed garlic. Turn on the stove and adjust the heat between low and medium setting. Slowly cook the garlic while stirring once in a while until it turns golden brown. Remove garlic from the pan and place in a clean bowl. Also remove the oil leaving around 3 to 4 tablespoons in the pan. Place the oil in a bowl as well."),
                    SizedBox(height: 20),
                    Text(
                        " Step 3 \n Apply medium to high heat on the pan. Add the leftover rice. Stir-fry for 2 minutes. Add ½ teaspoon salt. Toss until all the salt and rice are well distributed. Taste your garlic fried rice to determine if more salt is needed and add more as necessary. Add a portion of the fried garlic. Continue cooking for 1 minute. Transfer to a serving plate. Set aside"),
                    SizedBox(height: 20),
                    Text(
                        " Step 4 \n Pour the garlic infused oil on a clean pan. Heat it up to around 350F."),
                    SizedBox(height: 20),
                    Text(
                        " Step 5 \n Combine flour and cornstarch in a resealable bag and shake well. Place the bangus inside the bag. Seal the bag and shake until the fish gets coated with the flour mixture.."),
                    SizedBox(height: 20),
                    Text(
                        " Step 6 \n Fry the meat side of the fish for 5 minutes. Turn it over and continue frying the opposite side for 3 minutes.Transfer to a serving plate with the rice. Top with parsley and remaining fried garlic.."),
                    FlatButton(
                      child: Center(
                        child: Text(
                          'Add to Favorites',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Color(0xffFE9286),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

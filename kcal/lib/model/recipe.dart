class RecipeCard {
  final String imageUrl;
  final String duration;
  final String serve;
  final String title;
  final String description;

  RecipeCard({
    required this.imageUrl,
    required this.duration,
    required this.serve,
    required this.title,
    required this.description,
  });
}

final RecipeList = [
  RecipeCard(
    imageUrl: 'assets/images/bangus.jpg',
    duration: '15 min',
    serve: '3',
    title: 'Crispy Garlic Bangus and Cream of Pumpkin Soup',
    description:
        'Crispy Garlic Bangus has always been a favorite in my household. Touted as the Philippines’ national fish, milkfish, or bangus as we more commonly refer to it as, is a Filipino favorite without question.',
  ),
  RecipeCard(
    imageUrl: 'assets/images/binignit.jpg',
    duration: '30 min',
    serve: '10',
    title: 'Binignit',
    description:
        'Binignit is a type of fruit and tubers stew cooked in coconut milk. This Filipino meryenda dish originated from the Visayas region in the Philippines.',
  ),
  RecipeCard(
    imageUrl: 'assets/images/pakbet.jpg',
    duration: '10 min',
    serve: '5',
    title: 'Pinakbet',
    description:
        'Pinakbet Tagalog is a Filipino vegetable dish. It is composed of a variety of vegetables and it also has a protein component.',
  ),
  RecipeCard(
    imageUrl: 'assets/images/paksiw.jpg',
    duration: '5 min',
    serve: '6',
    title: 'Paksiw',
    description:
        'I like to have paksiw na bangus early in the morning with a serving of warm white rice and a cup of freshly brewed black coffee. This dish always reminds me on how simple yet satisfying life can be',
  ),
  RecipeCard(
    imageUrl: 'assets/images/utan.jpg',
    duration: '20 min',
    serve: '5',
    title: 'Utan Bisaya',
    description:
        'Have you ever heard of Utan Bisaya before? For locals of the Visayas or those with Visayan origins, Easy Utan Bisaya (or Law-Uy) is a vegetable soup made with the freshest of vegetables boiled in water.',
  ),
];

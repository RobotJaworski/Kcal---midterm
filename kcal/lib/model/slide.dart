class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    this.imageUrl = "",
    this.title = "",
    this.description = "",
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/image1.png',
      title: "Eat Healthy",
      description:
          "Maintaining good health should be the primary focus of everyone"),
  Slide(
      imageUrl: 'assets/images/image2.png',
      title: "Healthy Recipes",
      description:
          "Browse thousands of healthy recipes from all over the world "),
  Slide(
      imageUrl: 'assets/images/image3.png',
      title: "Track Your Health",
      description: "With amazing inbuilt tools you can track your progress"),
];

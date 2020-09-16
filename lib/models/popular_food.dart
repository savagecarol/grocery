class PopularFoodModel {
  String image;
  String name;
  String address;
  String rating;
  String time;
  PopularFoodModel(this.image, this.name, this.address, this.rating, this.time);
}

List<PopularFoodModel> getpopularfood() {
  List<PopularFoodModel> popularfood = List<PopularFoodModel>();
  PopularFoodModel popularfoodmodel;
  for (int i = 0; i < 5; i++) {
    popularfoodmodel = new PopularFoodModel(
        "https://cf.bstatic.com/images/hotel/max1024x768/214/214429380.jpg",
        "Kirana restaurent",
        "Lorem lpsum Adress",
        "3.5",
        "28");
    popularfood.add(popularfoodmodel);

  }
  return popularfood;
}

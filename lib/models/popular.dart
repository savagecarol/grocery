class PopularModel {
  String image;
  String name;
  String address;
 
  PopularModel(this.image, this.name, this.address);
}

List<PopularModel> getpopular() {
  List<PopularModel> popular = List<PopularModel>();
  PopularModel popularmodel;
  for (int i = 0; i < 5; i++) {
    popularmodel = new PopularModel(
        "https://media-cdn.tripadvisor.com/media/photo-s/0b/71/97/4e/north-indian-food-kaitaia.jpg",
        "Kirana restaurent",
        "lorem lupsum Addres");
    popular.add(popularmodel);
  }
  return popular;
}

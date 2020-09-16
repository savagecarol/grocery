class NearYouModel {
  String image;
  String name;
  String address;
  String rating;
  String time;
  NearYouModel(this.image, this.name, this.address, this.rating, this.time);
}

List<NearYouModel> getnear() {
  List<NearYouModel> near = List<NearYouModel>();
  NearYouModel nearyoumodel;
  for (int i = 0; i < 5; i++) {
    nearyoumodel = new NearYouModel(
        "https://eatforum.org/content/uploads/2018/05/table_with_food_top_view_900x700.jpg",
        "Kirana restaurent",
        "Lorem lpsum Address",
        "3.5",
        "28");
    near.add(nearyoumodel);
  }
  return near;
}

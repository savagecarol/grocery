import 'package:grocery/utils/default.dart';

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
  if (categorys == 0) {
    for (int i = 0; i < 5; i++) {
      nearyoumodel = new NearYouModel(
          "https://freepikpsd.com/wp-content/uploads/2019/10/grocery-items-png-2.png",
          "Grocery Shop",
          "Lorem lpsum Address",
          "3.5",
          "28");
      near.add(nearyoumodel);
    }
  }

  if (categorys == 1) {
    for (int i = 0; i < 5; i++) {
      nearyoumodel = new NearYouModel(
          "https://www.euractiv.com/wp-content/uploads/sites/2/2020/03/shutterstock_324566462-800x450.jpg",
          "Medicine Shop",
          "Lorem lpsum Address",
          "3.5",
          "28");
      near.add(nearyoumodel);
    }
  }

  if (categorys == 2) {
    for (int i = 0; i < 5; i++) {
      nearyoumodel = new NearYouModel(
          "https://eatforum.org/content/uploads/2018/05/table_with_food_top_view_900x700.jpg",
          "Food Restaurant",
          "Lorem lpsum Address",
          "3.5",
          "28");
      near.add(nearyoumodel);
    }
  }

  if (categorys == 3) {
    for (int i = 0; i < 5; i++) {
      nearyoumodel = new NearYouModel(
          "https://www.simplilearn.com/ice9/free_resources_article_thumb/8-Books-To-Read-for-a-PRINCE2.jpg",
          "Book Shop",
          "Lorem lpsum Address",
          "3.5",
          "28");
      near.add(nearyoumodel);
    }
  }

  if (categorys == 4) {
    for (int i = 0; i < 5; i++) {
      nearyoumodel = new NearYouModel(
          "https://cdn.mos.cms.futurecdn.net/r2eGAHAzv84gJjh9LVdjtY-320-80.jpg",
          "Liquid Shop",
          "Lorem lpsum Address",
          "3.5",
          "28");
      near.add(nearyoumodel);
    }
  }

  return near;
}

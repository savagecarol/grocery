import 'package:grocery/utils/default.dart';

class PopularVendorModel {
  String image;
  String name;
  String address;
  String rating;
  String time;
  PopularVendorModel(
      this.image, this.name, this.address, this.rating, this.time);
}

List<PopularVendorModel> getpopularfood() {
  List<PopularVendorModel> populars = List<PopularVendorModel>();
  if (categorys == 0) {
    PopularVendorModel popularfoodmodel;
    for (int i = 0; i < 5; i++) {
      popularfoodmodel = new PopularVendorModel(
          "https://freepikpsd.com/wp-content/uploads/2019/10/grocery-items-png-2.png",
          "Grocery Shop",
          "Lorem lpsum Adress",
          "3.5",
          "28");
      populars.add(popularfoodmodel);
    }
  }

   if (categorys == 1) {
    PopularVendorModel popularfoodmodel;
    for (int i = 0; i < 5; i++) {
      popularfoodmodel = new PopularVendorModel(
          "https://www.euractiv.com/wp-content/uploads/sites/2/2020/03/shutterstock_324566462-800x450.jpg",
          "Medicine shop",
          "Lorem lpsum Adress",
          "3.5",
          "28");
      populars.add(popularfoodmodel);
    }
  }


   if (categorys == 2) {
    PopularVendorModel popularfoodmodel;
    for (int i = 0; i < 5; i++) {
      popularfoodmodel = new PopularVendorModel(
          "https://eatforum.org/content/uploads/2018/05/table_with_food_top_view_900x700.jpg",
          "Food restaurent",
          "Lorem lpsum Adress",
          "3.5",
          "28");
      populars.add(popularfoodmodel);
    }
  }


   if (categorys == 3) {
    PopularVendorModel popularfoodmodel;
    for (int i = 0; i < 5; i++) {
      popularfoodmodel = new PopularVendorModel(
          "https://www.simplilearn.com/ice9/free_resources_article_thumb/8-Books-To-Read-for-a-PRINCE2.jpg",
          "Book Shop",
          "Lorem lpsum Adress",
          "3.5",
          "28");
      populars.add(popularfoodmodel);
    }
  }


   if (categorys == 4) {
    PopularVendorModel popularfoodmodel;
    for (int i = 0; i < 5; i++) {
      popularfoodmodel = new PopularVendorModel(
          "https://cdn.mos.cms.futurecdn.net/r2eGAHAzv84gJjh9LVdjtY-320-80.jpg",
          "Liquid Shop",
          "Lorem lpsum Adress",
          "3.5",
          "28");
      populars.add(popularfoodmodel);
    }
  }

  return populars;
}

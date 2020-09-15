class CategoriesModel {
  String image;
  String name;
  CategoriesModel(this.image, this.name);
}

List<CategoriesModel> getcategory() {
  List<CategoriesModel> categories = List<CategoriesModel>();
  CategoriesModel categoriesmodel;
  for (int i = 0; i < 8; i++) {
    categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "food");
    categories.add(categoriesmodel);
  }
  return categories;
}

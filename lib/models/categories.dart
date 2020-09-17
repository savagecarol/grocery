class CategoriesModel {
  String image;
  String name;
  CategoriesModel(this.image, this.name);
}

List<CategoriesModel> getcategory() {
  List<CategoriesModel> categories = List<CategoriesModel>();
  CategoriesModel categoriesmodel;
    categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "Grocery");
    categories.add(categoriesmodel);

     categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "Medicine");

           categories.add(categoriesmodel);

       categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "Food");

           categories.add(categoriesmodel);

         categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "Book");

             categories.add(categoriesmodel);

         categoriesmodel = new CategoriesModel(
        "https://i.pinimg.com/originals/24/37/bd/2437bd9758a684862c11aa9e8f20341a.jpg",
        "Liquid");

             categories.add(categoriesmodel);


  return categories;
}

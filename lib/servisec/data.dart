import 'package:flutter_application_010203040506070809/model/categoty_model.dart';

List<CategoryModel> getCategories(){

  List <CategoryModel> category=[];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName="Business";
  categoryModel.image="assets/business.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

    categoryModel.categoryName="Спорт";
  categoryModel.image="assets/bory.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

   categoryModel.categoryName="Все Новости";
  categoryModel.image="assets/general.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

   categoryModel.categoryName="Здоровье";
  categoryModel.image="assets/health.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

   categoryModel.categoryName="Наука";
  categoryModel.image="assets/science.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();
   
     categoryModel.categoryName="Развлечение";
  categoryModel.image="assets/wewewe.jpg";
  category.add(categoryModel);
  categoryModel= new CategoryModel();

return category;
  

}
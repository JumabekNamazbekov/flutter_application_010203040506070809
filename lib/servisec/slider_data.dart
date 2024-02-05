import 'package:flutter_application_010203040506070809/model/slider_model.dart';

List<SliderModel> getSliders (){

  List <SliderModel> slider=[];
  SliderModel categoryModel = new SliderModel();


   categoryModel.image="assets/business.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();

   
   categoryModel.image="assets/bory.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();

      categoryModel.image="assets/wewewe.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();

        categoryModel.image="assets/health.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();

           categoryModel.image="assets/science.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();

   
           categoryModel.image="assets/general.jpg";
   categoryModel.name="Как же прекрасно жить с любовью";
   slider.add(categoryModel);
   categoryModel= new SliderModel();




return slider;
  

}
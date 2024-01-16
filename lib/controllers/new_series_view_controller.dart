import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NewSeriesViewController extends GetxController{
  TextEditingController titleController = TextEditingController();
  String title = "Assassin";
  int seasons = 1;
  String coverImage="https://assets.mubicdn.net/images/notebook/post_images/19893/images-w1400.jpg?1449196747";

  void noveles(){
    seasons++;
    update();
  }
  void csokkentes(){
    if(seasons - 1 !=0){
      seasons--;
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    titleController.text=title;
    titleController.addListener(() {
      title = titleController.text;
    });
  }
}
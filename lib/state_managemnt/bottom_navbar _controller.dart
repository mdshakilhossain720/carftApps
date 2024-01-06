import 'package:get/get.dart';

class BottomNavBarController extends GetxController{
  int SelectIndex=0;

  void changeIndex(int index){
    SelectIndex=index;
    update();
  }
  void backToHome(){
    if(SelectIndex!=0){
      SelectIndex=0;
      update();
    }
  }
}

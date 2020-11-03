import 'package:get/get.dart';

class LoginController extends GetxController{
  int angka = 0;

  void tambahAngka (){
    angka++;
    update();
  }

  void kurangAngka (){
    angka--;
    update();
  }

  void onClose(){
    print('wawaaw');
    super.onClose();
  }
  
  @override
  void onInit() {
    print('ooooooo');
    super.onInit();
  }
}
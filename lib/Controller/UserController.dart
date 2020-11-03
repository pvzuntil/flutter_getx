import 'package:get/get.dart';

class UserController extends GetxController{
  String displayUser = '';


  void changeUser(name, umur){  
    displayUser = 'Aku adalah $name, Umur $umur';
    update();
  }
}
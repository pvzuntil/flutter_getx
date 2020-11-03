import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/Controller/LoginController.dart';
import 'package:learngetx/Controller/UserController.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    final UserController userController = Get.put(UserController());
    final TextEditingController enterNama = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<LoginController>(
                builder: (_) {
                  return Text(_.angka.toString());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      loginController.tambahAngka();
                    },
                    child: Text('TAMBAH'),
                  ),
                  RaisedButton(
                    elevation: 0,
                    onPressed: () {
                      loginController.kurangAngka();
                    },
                    child: Text('KURANG'),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  controller: enterNama,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Masukkan nama pak.e",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              GetBuilder<UserController>(
                builder: (_) {
                  return Text(_.displayUser ?? 'sashasjh');
                },
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    userController.changeUser(enterNama.text, loginController.angka);
                    enterNama.text = '';
                  },
                  child: Text('Masuk'),
                  color: Colors.greenAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/Controller/AuthController.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () => {
                    authController.checkBiometric()
                  },
                  child: Text('Check Biometric'),
                ),
                RaisedButton(
                  onPressed: () => {},
                  child: Text('LOGIN'),
                ),
              ],
            ),
            Column(
              children: [
                GetBuilder<AuthController>(
                  builder: (_) => Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GetBuilder<AuthController>(
                  builder: (_) => Text(_.biometricStatus),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

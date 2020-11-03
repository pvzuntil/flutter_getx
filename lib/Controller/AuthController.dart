import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class AuthController extends GetxController {
  bool isAuth = false;
  bool isAvailableBiometric = false;
  String biometricStatus = 'Not Available';
  LocalAuthentication localAuthentication = LocalAuthentication();

  void checkBiometric() async {
    isAvailableBiometric = await localAuthentication.canCheckBiometrics;
    if (isAvailableBiometric) {
      List<BiometricType> bioType =
          await localAuthentication.getAvailableBiometrics();
      print(bioType);
    }
    update();
  }
}

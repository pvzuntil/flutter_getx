import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/GlobalComponent/AppBar.dart';
import 'package:learngetx/Page/AuthPage.dart';
import 'package:learngetx/Page/LoginPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    print(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () => {Get.to(LoginPage(), arguments: 'heheas')},
                    child: Text(
                      'Ke Halaman Login',
                      style: buttonStyle,
                    ),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () => {Get.to(AuthPage())},
                    child: Text(
                      'Ke Halaman AUTH',
                      style: buttonStyle,
                    ),
                    color: Colors.blue,
                  ),
                  
                ],
              ),
              RaisedButton(
                onPressed: () => {
                  // Get.snackbar(
                  //   'Title',
                  //   'message',
                  //   snackPosition: SnackPosition.BOTTOM,
                  //   barBlur: 0,
                  //   backgroundColor: Colors.red,
                  //   borderRadius: 0,
                  //   margin: EdgeInsets.all(0),
                  //   animationDuration: Duration(milliseconds: 700),
                  //   colorText: Colors.white
                  // )
                  Get.defaultDialog(
                      title: 'yeuywue',
                      content: Text('sajshajsh'),
                      radius: 0,
                      actions: [
                        RaisedButton(
                          onPressed: () => {Get.back()},
                          child: Text('KEMBALI'),
                        )
                      ])
                },
                child: Text(
                  'BUTTON',
                  style: buttonStyle,
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle buttonStyle = TextStyle(
  color: Colors.white,
);

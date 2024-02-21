import 'package:passvault_app/app/pages/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:passvault_app/app/routes/app_pages.dart';

class LoginView extends GetView<HomeController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          TextField(
            decoration: InputDecoration(hintText: "Email address"),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.login);
            },
            child: Container(
              child: Text("CONTINUE"),
            ),
          )
        ],
      ),
    );
  }
}

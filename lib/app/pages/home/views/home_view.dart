import 'package:passvault_app/app/pages/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: InkWell(
        child: Text("login"),
      ),
    ));
  }
}

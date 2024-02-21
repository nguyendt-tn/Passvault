import 'package:passvault_app/app/pages/index/views/index_view.dart';
import 'package:passvault_app/app/pages/main/controllers/main_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: IndexView());
  }
}

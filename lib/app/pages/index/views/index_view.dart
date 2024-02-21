import 'package:passvault_app/app/data/models/nav_item.dart';
import 'package:passvault_app/app/pages/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:passvault_app/app/pages/home/views/home_view.dart';
import 'package:passvault_app/app/pages/index/controllers/index_controller.dart';
import 'package:passvault_app/app/values/app_colors.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => IndexedStack(
              index: controller.currentIndex.value,
              children: const [HomeView(), LoginView(), HomeView()],
            )),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            onTap: (value) {
              controller.onPageChange(value);
            },
            backgroundColor: AppColors.navBackgroundColor,
            items: NavItem.navItemList
                .map((item) => BottomNavigationBarItem(
                      icon: item.icon,
                      label: item.label,
                      backgroundColor: item.backgroundColor,
                    ))
                .toList(),
            selectedItemColor: AppColors.navItemColor,
            unselectedItemColor: AppColors.navItemColor.withOpacity(0.5),
            currentIndex: controller.currentIndex.value,
          )),
    );
  }
}

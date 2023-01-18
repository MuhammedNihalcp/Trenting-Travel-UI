import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tranting_travel_ui/Screen/controller/navigator_controller/navigator_controller.dart';
import 'package:tranting_travel_ui/Screen/view/Wishlist.dart';
import 'package:tranting_travel_ui/Screen/view/account_page.dart';
import 'package:tranting_travel_ui/Screen/view/category_page.dart';
import 'package:tranting_travel_ui/Screen/view/home_page.dart';
import 'package:tranting_travel_ui/Screen/view/widget/bottom_menu.dart';
import 'package:tranting_travel_ui/core/color/colors.dart';

class ScreenNavigator extends StatelessWidget {
  ScreenNavigator({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;

  final bnm = BottomNavigationMenu();
  final LandingPageController landingPageController =
      Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController());
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => IndexedStack(
            index: landingPageController.tapIndex.value,
            children: [
              ScreenHome(
                width: width,
                height: height,
              ),
              ScreenCategory(
                width: width,
                height: height,
              ),
              const ScreenWish(),
              const ScreenAccount(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          (() => BottomNavigationBar(
                showUnselectedLabels: true,
                showSelectedLabels: true,
                onTap: ((index) => landingPageController.changeTabIndex(index)),
                currentIndex: landingPageController.tapIndex.value,
                backgroundColor: colorWhite,
                unselectedItemColor:colorGrey,
                selectedItemColor: buttonC,
                unselectedLabelStyle: bnm.unselectedLabelStyle,
                selectedLabelStyle: bnm.selectedLabelStyle,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: const Icon(
                        Icons.home_filled,
                        size: 20.0,
                      ),
                    ),
                    label: 'Home',
                    backgroundColor: colorWhite,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: const Icon(
                        Icons.grid_view_rounded,
                        size: 20.0,
                      ),
                    ),
                    label: 'Category',
                    backgroundColor: colorWhite,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: const Icon(
                        Icons.favorite_border_sharp,
                        size: 20.0,
                      ),
                    ),
                    label: 'Wishlist',
                    backgroundColor: colorWhite,
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: const Icon(
                        Icons.account_circle,
                        size: 20.0,
                      ),
                    ),
                    label: 'Account',
                    backgroundColor: colorWhite,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/controller/screen_controller.dart';
import 'package:shop_app/views/common/widgets/bottom_nav_bar.dart';
import 'package:shop_app/views/screens/add_product_screen.dart';
import 'package:shop_app/views/screens/card_screen.dart';
import 'package:shop_app/views/screens/home_screen.dart';
import 'package:shop_app/views/screens/profile_screen.dart';
import 'package:shop_app/views/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomeScreen(),
    SearchScreen(),
    AddProductScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {

    return Consumer<ScreenNotifier>(
        builder: (context, page, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: pageList[page.pageIndex],
            bottomNavigationBar: const BottomNavBar(),
          );
        }
    );
  }
}

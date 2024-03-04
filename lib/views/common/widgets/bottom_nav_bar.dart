import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/controller/screen_controller.dart';
import 'package:shop_app/views/common/widgets/bottom_bar_item.dart';

import '../constants/colors.dart';

class BottomNavBar extends StatelessWidget {

  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenNotifier>(
      builder: (context, page, child) {
        return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: tdGrey,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarItem(
                      onTap: () {
                        page.pageIndex = 0;
                      },
                      icon: page.pageIndex == 0 ? Icons.home : Icons.home_outlined,
                    ),
                    BottomBarItem(
                      onTap: () {
                        page.pageIndex = 1;
                      },
                      icon: page.pageIndex == 1 ? Icons.search : Icons.search_outlined,
                    ),
                    BottomBarItem(
                      onTap: () {
                        page.pageIndex = 2;
                      },
                      icon: page.pageIndex == 2 ? Icons.cancel : Icons.add,
                    ),
                    BottomBarItem(
                      onTap: () {
                        page.pageIndex = 3;
                      },
                      icon: page.pageIndex == 3 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                    ),
                    BottomBarItem(
                      onTap: () {
                        page.pageIndex = 4;
                      },
                      icon: page.pageIndex == 4 ? Icons.person : Icons.person_outline,
                    )
                  ],
                ),
              ),)
        );
      },
    );
  }
}

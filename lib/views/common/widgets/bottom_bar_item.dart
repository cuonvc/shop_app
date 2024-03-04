import 'package:flutter/material.dart';
import 'package:shop_app/views/common/constants/colors.dart';

class BottomBarItem extends StatelessWidget {

  final void Function()? onTap;
  final IconData? icon;

  const BottomBarItem({
    super.key,
    this.onTap,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 36,
          height: 36,
          child: Icon(
            icon,
            size: 26,
            color: Colors.white,
          ),
        )
    );
  }
}

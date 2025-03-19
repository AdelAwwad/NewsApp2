import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo on the left
          // Spacer to push the text to the center
          // Centered text
          Text(
            "News",
            style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Cloud",
            style: TextStyle(
              fontSize: 25,
              color: Colors.orange,
              fontWeight: FontWeight.w800,
              shadows: [Shadow(offset: Offset(2, 1),
                blurRadius: 5.0,
                color: Colors.grey
              )]
            ),
          ),
          // Spacer to balance the logo on the left

        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

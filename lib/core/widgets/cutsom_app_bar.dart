import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => context.pop(),
        child: const Icon(Icons.arrow_back),
      ),
      title: Text(
        title,
        style: AppTextStyles.font18Medium.copyWith(letterSpacing: 0.45),
      ),
      elevation: 0,
    );
  }
}

import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackgroundTextAndImage extends StatelessWidget {
  final bool withArrowIcon;
  final String imagePath;
  const BackgroundTextAndImage({
    super.key,
    this.withArrowIcon = false,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 60.h),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            if (withArrowIcon)
              InkWell(
                onTap: () => context.pop(),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 15.w),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back_sharp, color: Colors.white),
                  ),
                ),
              ),
            Text(
              'Welcome',
              style: AppTextStyles.font18Medium.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

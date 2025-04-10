import 'package:big_cart/core/routing/router.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigCart extends StatelessWidget {
  const BigCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, _) {
        return MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundLight,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.backgroundLight,
            ),
          ),
          title: 'Big Cart',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: router,
        );
      },
    );
  }
}

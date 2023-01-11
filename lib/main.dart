import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/constants/values.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:
          AppColors.primaryColor, // Only honored in Android M and above
      statusBarIconBrightness:
          Brightness.light // Only honored in Android M and above
      // statusBarBrightness: Brightness.light,      // Only honored in iOS
      ));

  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, screenUtil) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Talbotiq",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  backgroundColor: AppColors.primaryColor,
                  elevation: 0),
              primaryColor: AppColors.primaryColor,
              scaffoldBackgroundColor: AppColors.greyprimarycolor.shade100,
              textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white),
              ),
            ),
          );
        }),
  );
}

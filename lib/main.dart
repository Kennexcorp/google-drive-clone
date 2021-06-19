import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_drive_clone/app/modules/home/utilities/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Google Drive Clone",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes.dark,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      debugShowCheckedModeBanner: false,
    ),
  );
}

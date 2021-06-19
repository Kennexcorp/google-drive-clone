import 'package:get/get.dart';

import 'package:google_drive_clone/app/modules/files/bindings/files_binding.dart';
import 'package:google_drive_clone/app/modules/files/views/files_view.dart';
import 'package:google_drive_clone/app/modules/home/bindings/home_binding.dart';
import 'package:google_drive_clone/app/modules/home/views/home_view.dart';
import 'package:google_drive_clone/app/modules/navigation/bindings/navigation_binding.dart';
import 'package:google_drive_clone/app/modules/navigation/views/navigation_view.dart';
import 'package:google_drive_clone/app/modules/shared/bindings/shared_binding.dart';
import 'package:google_drive_clone/app/modules/shared/views/shared_view.dart';
import 'package:google_drive_clone/app/modules/starred/bindings/starred_binding.dart';
import 'package:google_drive_clone/app/modules/starred/views/starred_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.NAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.FILES,
      page: () => FilesView(),
      binding: FilesBinding(),
    ),
    GetPage(
      name: _Paths.STARRED,
      page: () => StarredView(),
      binding: StarredBinding(),
    ),
    GetPage(
      name: _Paths.SHARED,
      page: () => SharedView(),
      binding: SharedBinding(),
    ),
  ];
}

import 'package:get/get.dart';
import 'package:laundry_app/app/modules/home/views/pages/edit_profile_view.dart';
import 'package:laundry_app/app/modules/home/views/pages/profile_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/pages/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
  ];
}

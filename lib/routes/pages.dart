import 'package:cardfacil_template/pages/home/home_page.dart';
import 'package:get/get.dart';

import '../pages/login/login_binding.dart';
import '../pages/login/login_page.dart';
import 'routes.dart';

abstract class AppPages {
  static final page = [
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}

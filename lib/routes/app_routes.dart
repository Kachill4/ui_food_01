import 'package:flutter/material.dart';
import 'package:ui_food_01/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:ui_food_01/presentation/profile_cust_screen/profile_cust_screen.dart';
import 'package:ui_food_01/presentation/buat_akun_screen/buat_akun_screen.dart';
import 'package:ui_food_01/presentation/android_large_two_tab_container_screen/android_large_two_tab_container_screen.dart';
import 'package:ui_food_01/presentation/detil_menuone_screen/detil_menuone_screen.dart';
import 'package:ui_food_01/presentation/detil_menutwo_screen/detil_menutwo_screen.dart';
import 'package:ui_food_01/presentation/detil_menuthree_screen/detil_menuthree_screen.dart';
import 'package:ui_food_01/presentation/detil_menufour_screen/detil_menufour_screen.dart';
import 'package:ui_food_01/presentation/rincian_screen/rincian_screen.dart';
import 'package:ui_food_01/presentation/login_adm_screen/login_adm_screen.dart';
import 'package:ui_food_01/presentation/home_adm_screen/home_adm_screen.dart';
import 'package:ui_food_01/presentation/penjualan_adm_screen/penjualan_adm_screen.dart';
import 'package:ui_food_01/presentation/add_adm_screen/add_adm_screen.dart';
import 'package:ui_food_01/presentation/edit_adm_screen/edit_adm_screen.dart';
import 'package:ui_food_01/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String profileCustScreen = '/profile_cust_screen';

  static const String buatAkunScreen = '/buat_akun_screen';

  static const String androidLargeTwoPage = '/android_large_two_page';

  static const String androidLargeTwoTabContainerScreen =
      '/android_large_two_tab_container_screen';

  static const String detilMenuoneScreen = '/detil_menuone_screen';

  static const String detilMenutwoScreen = '/detil_menutwo_screen';

  static const String detilMenuthreeScreen = '/detil_menuthree_screen';

  static const String detilMenufourScreen = '/detil_menufour_screen';

  static const String rincianScreen = '/rincian_screen';

  static const String loginAdmScreen = '/login_adm_screen';

  static const String homeAdmScreen = '/home_adm_screen';

  static const String penjualanAdmScreen = '/penjualan_adm_screen';

  static const String addAdmScreen = '/add_adm_screen';

  static const String editAdmScreen = '/edit_adm_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    profileCustScreen: (context) => ProfileCustScreen(),
    buatAkunScreen: (context) => BuatAkunScreen(),
    androidLargeTwoTabContainerScreen: (context) =>
        AndroidLargeTwoTabContainerScreen(),
    detilMenuoneScreen: (context) => DetilMenuoneScreen(),
    detilMenutwoScreen: (context) => DetilMenutwoScreen(),
    detilMenuthreeScreen: (context) => DetilMenuthreeScreen(),
    detilMenufourScreen: (context) => DetilMenufourScreen(),
    rincianScreen: (context) => RincianScreen(),
    loginAdmScreen: (context) => LoginAdmScreen(),
    homeAdmScreen: (context) => HomeAdmScreen(),
    penjualanAdmScreen: (context) => PenjualanAdmScreen(),
    addAdmScreen: (context) => AddAdmScreen(),
    editAdmScreen: (context) => EditAdmScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

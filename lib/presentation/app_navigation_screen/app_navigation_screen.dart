import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile_cust".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileCustScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "buat_akun".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.buatAkunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.androidLargeTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "detil_menuOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detilMenuoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "detil_menuTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detilMenutwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "detil_menuThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detilMenuthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "detil_menuFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detilMenufourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "rincian".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.rincianScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login_adm".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginAdmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home_adm".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeAdmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "penjualan_adm".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.penjualanAdmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add_adm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.addAdmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit_adm".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editAdmScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

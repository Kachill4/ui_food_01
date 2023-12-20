import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/presentation/android_large_two_page/android_large_two_page.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_floating_button.dart';

class AndroidLargeTwoTabContainerScreen extends StatefulWidget {
  const AndroidLargeTwoTabContainerScreen({Key? key}) : super(key: key);

  @override
  AndroidLargeTwoTabContainerScreenState createState() =>
      AndroidLargeTwoTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class AndroidLargeTwoTabContainerScreenState
    extends State<AndroidLargeTwoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                height: 770.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          decoration: AppDecoration.fillOnPrimaryContainer,
                          child: _buildAppBar(context))),
                  _buildMakananTab(context),
                  Container(
                      margin: EdgeInsets.only(top: 167.v),
                      height: 603.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            AndroidLargeTwoPage(),
                            AndroidLargeTwoPage()
                          ]))
                ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 105.v,
        title: Padding(
            padding: EdgeInsets.only(left: 46.h),
            child: Column(children: [
              AppbarSubtitleFour(
                  text: "lbl_stasiun2".tr,
                  margin: EdgeInsets.only(left: 19.h, right: 20.h)),
              SizedBox(height: 12.v),
              AppbarSubtitleThree(text: "lbl_makanan".tr)
            ])),
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 25.h, right: 35.h, bottom: 15.v),
              child: Column(children: [
                AppbarTrailingImage(imagePath: ImageConstant.imgLogo1),
                SizedBox(height: 29.v),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgImage1,
                    margin: EdgeInsets.only(left: 5.h, right: 8.h),
                    onTap: () {
                      onTapImageOne(context);
                    })
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildMakananTab(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 28.h, top: 133.v, right: 28.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder29),
            child: Container(
                height: 34.v,
                width: 304.h,
                decoration: BoxDecoration(
                    color: appTheme.gray800,
                    borderRadius: BorderRadius.circular(17.h)),
                child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.whiteA700,
                    labelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'M PLUS 1',
                        fontWeight: FontWeight.w400),
                    unselectedLabelColor: appTheme.whiteA700,
                    unselectedLabelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'M PLUS 1',
                        fontWeight: FontWeight.w400),
                    indicator: BoxDecoration(
                        color: appTheme.gray700,
                        borderRadius: BorderRadius.circular(17.h)),
                    tabs: [
                      Tab(child: Text("lbl_makanan2".tr)),
                      Tab(child: Text("lbl_minuman".tr))
                    ]))));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 48,
        width: 48,
        backgroundColor: appTheme.deepOrange5001,
        child: CustomImageView(imagePath: ImageConstant.imgGroup248x48));
  }

  /// Navigates to the profileCustScreen when the action is triggered.
  onTapImageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileCustScreen);
  }
}

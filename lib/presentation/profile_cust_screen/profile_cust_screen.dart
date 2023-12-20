import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_leading_image.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';

class ProfileCustScreen extends StatelessWidget {
  const ProfileCustScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 17.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("lbl_profile_pembeli".tr,
                            style: CustomTextStyles.headlineLargeLondrinaSolid),
                        SizedBox(height: 9.v),
                        Container(
                            height: 547.v,
                            width: 298.h,
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(20.h))),
                        SizedBox(height: 12.v)
                      ])),
                  SizedBox(height: 13.v),
                  _buildFour(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgImage9,
            margin: EdgeInsets.only(left: 8.h, bottom: 76.v),
            onTap: () {
              onTapImageNine(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Column(children: [
              AppbarSubtitleFour(
                  text: "lbl_stasiun2".tr,
                  margin: EdgeInsets.only(left: 19.h, right: 20.h)),
              SizedBox(height: 12.v),
              AppbarSubtitleThree(text: "lbl_makanan".tr)
            ])),
        actions: [
          Padding(
              padding: EdgeInsets.fromLTRB(25.h, 4.v, 35.h, 15.v),
              child: Column(children: [
                AppbarTrailingImage(imagePath: ImageConstant.imgLogo1),
                SizedBox(height: 29.v),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgImage1,
                    margin: EdgeInsets.only(left: 5.h, right: 8.h))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 1.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SizedBox(height: 8.v), Divider()]));
  }

  /// Navigates to the androidLargeTwoTabContainerScreen when the action is triggered.
  onTapImageNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwoTabContainerScreen);
  }
}

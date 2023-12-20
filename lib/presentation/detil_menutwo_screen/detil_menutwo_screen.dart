import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_leading_image.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';

class DetilMenutwoScreen extends StatelessWidget {
  const DetilMenutwoScreen({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.h, vertical: 12.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 6.v),
                                decoration: AppDecoration.fillOrangeA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 10.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgSushi12,
                                          height: 305.v,
                                          width: 275.h,
                                          radius: BorderRadius.circular(15.h),
                                          margin: EdgeInsets.only(left: 3.h)),
                                      Container(
                                          height: 163.v,
                                          width: 262.h,
                                          margin: EdgeInsets.only(left: 1.h),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment: Alignment
                                                        .topRight,
                                                    child: Container(
                                                        width: 196.h,
                                                        margin: EdgeInsets.only(
                                                            right: 26.h),
                                                        child: Text(
                                                            "msg_steak_with_healthy"
                                                                .tr,
                                                            maxLines: 3,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge))),
                                                Align(
                                                    alignment: Alignment
                                                        .bottomCenter,
                                                    child: SizedBox(
                                                        width: 262.h,
                                                        child: Text(
                                                            "msg_potongan_steak_berkualitas"
                                                                .tr,
                                                            maxLines: 9,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .bodySmallMPLUS1WhiteA700)))
                                              ]))
                                    ])),
                            SizedBox(height: 19.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 6.v),
                                          child: Text("lbl_rp_58_000_00".tr,
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Container(
                                          height: 32.v,
                                          width: 30.h,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 1.v),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 30.adaptSize,
                                                        width: 30.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .deepOrange50,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(7
                                                                        .h),
                                                            border: Border.all(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                width: 1.h)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("lbl".tr,
                                                        style: theme.textTheme
                                                            .headlineSmall))
                                              ])),
                                      Container(
                                          width: 38.h,
                                          margin: EdgeInsets.only(top: 1.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h),
                                          decoration: AppDecoration
                                              .outlinePrimary1
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Text("lbl_1".tr,
                                              style: CustomTextStyles
                                                  .titleLargeKanitBluegray400)),
                                      SizedBox(
                                          height: 32.v,
                                          width: 30.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        height: 30.adaptSize,
                                                        width: 30.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .deepOrange50,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(7
                                                                        .h),
                                                            border: Border.all(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                width: 1.h)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("lbl2".tr,
                                                        style: theme.textTheme
                                                            .headlineSmall))
                                              ]))
                                    ])),
                            SizedBox(height: 16.v),
                            CustomOutlinedButton(
                                height: 30.v,
                                text: "msg_tambah_ke_keranjang".tr,
                                margin:
                                    EdgeInsets.only(left: 40.h, right: 37.h),
                                buttonTextStyle: theme.textTheme.bodyLarge!),
                            SizedBox(height: 5.v)
                          ])),
                  SizedBox(height: 13.v),
                  _buildLine(context)
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
            padding: EdgeInsets.only(left: 4.h),
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
  Widget _buildLine(BuildContext context) {
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

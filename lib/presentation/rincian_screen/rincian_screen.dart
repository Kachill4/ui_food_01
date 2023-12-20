import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_leading_image.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';

class RincianScreen extends StatelessWidget {
  const RincianScreen({Key? key}) : super(key: key);

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
                          horizontal: 14.h, vertical: 10.v),
                      decoration: AppDecoration.fillOrangeA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("msg_ringkasan_pembelian".tr,
                            style: CustomTextStyles.headlineLargeLondrinaSolid),
                        SizedBox(height: 3.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.h, vertical: 42.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildTable(context),
                                  SizedBox(height: 46.v),
                                  _buildTable1(context),
                                  SizedBox(height: 46.v)
                                ])),
                        SizedBox(height: 13.v),
                        CustomOutlinedButton(
                            height: 30.v,
                            text: "lbl_checkout".tr,
                            margin: EdgeInsets.only(left: 40.h, right: 37.h),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL7,
                            buttonTextStyle: theme.textTheme.bodyLarge!),
                        SizedBox(height: 6.v)
                      ])),
                  SizedBox(height: 13.v),
                  _buildColumn(context)
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
  Widget _buildTable(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_item".tr, style: theme.textTheme.labelLarge),
                    Text("lbl_qty".tr, style: theme.textTheme.labelLarge),
                    Text("lbl_total".tr, style: theme.textTheme.labelLarge)
                  ])),
          SizedBox(height: 20.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("lbl_gyoza".tr, style: CustomTextStyles.bodySmallLohitTamil11),
            Spacer(flex: 53),
            Text("lbl_20".tr, style: theme.textTheme.bodySmall),
            Spacer(flex: 46),
            Text("lbl_660000".tr, style: theme.textTheme.bodySmall)
          ]),
          SizedBox(height: 20.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("lbl_yakisoba".tr,
                style: CustomTextStyles.bodySmallLohitTamil11),
            Text("lbl_10".tr, style: theme.textTheme.bodySmall),
            Text("lbl_370000".tr, style: theme.textTheme.bodySmall)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildTable1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildRow(context)),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildRow(context)),
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: _buildRow(context)),
              SizedBox(height: 10.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
                  decoration: AppDecoration.outlinePrimary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 33.h),
                            child: Text("lbl_total2".tr,
                                style: theme.textTheme.labelLarge)),
                        Text("lbl_988_800".tr,
                            style: theme.textTheme.labelLarge)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 1.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SizedBox(height: 8.v), Divider()]));
  }

  /// Common widget
  Widget _buildRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text("lbl_ppn_11".tr,
              style: CustomTextStyles.bodySmallLohitTamil)),
      Text("lbl_113300".tr, style: theme.textTheme.bodySmall)
    ]);
  }

  /// Navigates to the androidLargeTwoTabContainerScreen when the action is triggered.
  onTapImageNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwoTabContainerScreen);
  }
}

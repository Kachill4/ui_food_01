import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_icon_button.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';

class HomeAdmScreen extends StatelessWidget {
  const HomeAdmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray100,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  _buildTotalPenjualan(context),
                  SizedBox(height: 25.v),
                  SizedBox(
                      height: 528.v,
                      width: 328.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(right: 2.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 11.h, vertical: 5.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder29),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_list_menu".tr,
                                          style: CustomTextStyles
                                              .bodyLargeMarkoOnePrimary),
                                      SizedBox(height: 40.v),
                                      _buildMenuTable(context),
                                      SizedBox(height: 66.v)
                                    ]))),
                        CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            alignment: Alignment.bottomRight,
                            onTap: () {
                              onTapBtnIconButton(context);
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup2))
                      ])),
                  SizedBox(height: 13.v),
                  _buildLine(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 128.v,
        centerTitle: true,
        title: SizedBox(
            height: 128.91.v,
            width: 230.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarSubtitleTwo(
                  text: "lbl_makanan".tr, margin: EdgeInsets.only(top: 79.v)),
              AppbarSubtitleOne(
                  text: "lbl_stasiun2".tr,
                  margin: EdgeInsets.fromLTRB(22.h, 42.v, 22.h, 37.v)),
              AppbarSubtitleFive(
                  text: "lbl_admin".tr,
                  margin:
                      EdgeInsets.only(left: 40.h, right: 40.h, bottom: 71.v))
            ])));
  }

  /// Section Widget
  Widget _buildTotalPenjualan(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTotalPenjualan(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
                      child: Text("msg_total_penjualan".tr,
                          style: CustomTextStyles.bodySmallLohitTamil_1)),
                  Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text("msg_rp_98_765_432_21".tr,
                          style: CustomTextStyles.bodyLargeDaysOnePrimary)),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.fromLTRB(14.h, 2.v, 2.h, 4.v))
                ])));
  }

  /// Section Widget
  Widget _buildMenuTable(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildRow(context),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                padding: EdgeInsets.fromLTRB(11.h, 6.v, 12.h, 7.v),
                decoration: AppDecoration.outlineGray4001,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 77.h,
                      child: Text("msg_fresh_salmon_sushi2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallLohitTamil_1
                              .copyWith(height: 2.00)))
                ])),
            Container(
                width: 101.h,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 26.v),
                decoration: AppDecoration.outlineGray4001,
                child: Text("lbl_35000".tr, style: theme.textTheme.bodySmall)),
            CustomOutlinedButton(
                height: 68.v,
                width: 101.h,
                text: "lbl_edit".tr,
                buttonStyle: CustomButtonStyles.outlineGray1,
                buttonTextStyle: theme.textTheme.bodySmall!,
                onPressed: () {
                  onTapEdit(context);
                })
          ]),
          _buildRow1(context),
          _buildRow(context),
          _buildRow(context),
          _buildRow1(context),
          _buildRow1(context)
        ]));
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 4.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 2.v), Divider()]));
  }

  /// Common widget
  Widget _buildRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 101.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_yakisoba".tr,
              style: CustomTextStyles.bodyMediumLohitTamilPrimary)),
      Container(
          width: 101.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_37000".tr, style: theme.textTheme.bodySmall)),
      Container(
          width: 101.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_edit".tr, style: theme.textTheme.bodySmall))
    ]);
  }

  /// Common widget
  Widget _buildRow1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: EdgeInsets.fromLTRB(11.h, 7.v, 12.h, 8.v),
          decoration: AppDecoration.outlineGray4001,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                SizedBox(
                    width: 69.h,
                    child: Text("msg_nasi_goreng_special".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodySmall!.copyWith(height: 1.30)))
              ])),
      Container(
          width: 101.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_37000".tr, style: theme.textTheme.bodySmall)),
      Container(
          width: 101.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_edit".tr, style: theme.textTheme.bodySmall))
    ]);
  }

  /// Navigates to the penjualanAdmScreen when the action is triggered.
  onTapTotalPenjualan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.penjualanAdmScreen);
  }

  /// Navigates to the editAdmScreen when the action is triggered.
  onTapEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editAdmScreen);
  }

  /// Navigates to the addAdmScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAdmScreen);
  }
}

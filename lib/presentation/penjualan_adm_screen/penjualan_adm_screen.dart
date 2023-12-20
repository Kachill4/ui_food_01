import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';

class PenjualanAdmScreen extends StatelessWidget {
  const PenjualanAdmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray100,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(children: [
                  SizedBox(height: 15.v),
                  CustomOutlinedButton(
                      width: 220.h,
                      text: "msg_e_d_i_t_m_e_n".tr,
                      buttonStyle: CustomButtonStyles.outlineOnPrimaryTL11,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumMochiyPopOneWhiteA700,
                      onPressed: () {
                        onTapEDITMENU(context);
                      }),
                  SizedBox(height: 10.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 17.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 15.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("msg_daftar_penjualan".tr,
                            style: CustomTextStyles.bodyLargeMarkoOnePrimary),
                        SizedBox(height: 3.v),
                        _buildUserProfile(context),
                        SizedBox(height: 3.v)
                      ])),
                  SizedBox(height: 9.v),
                  _buildTotalPenjualan(context),
                  SizedBox(height: 7.v),
                  _buildClientTestimonials(context)
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
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildRow(context),
          _buildRow(context),
          _buildRow(context),
          _buildRow(context),
          _buildRow(context),
          _buildRow(context),
          _buildRow(context)
        ]));
  }

  /// Section Widget
  Widget _buildTotalPenjualan(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 8.v),
                  child: Text("msg_total_penjualan".tr,
                      style: CustomTextStyles.bodySmallLohitTamil_1)),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 6.h),
                  child: Text("lbl_rp_107_030_000".tr,
                      style: CustomTextStyles.titleLargeDaysOne))
            ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
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
          width: 104.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_abc123".tr,
              style: CustomTextStyles.bodySmallLohitTamil11)),
      Container(
          width: 104.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_20".tr, style: theme.textTheme.bodySmall)),
      Container(
          width: 104.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
          decoration: AppDecoration.outlineGray4001,
          child: Text("lbl_35000000".tr, style: theme.textTheme.bodySmall))
    ]);
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapEDITMENU(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }
}

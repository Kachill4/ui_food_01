import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_leading_image.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';
import 'package:ui_food_01/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditAdmScreen extends StatelessWidget {
  EditAdmScreen({Key? key}) : super(key: key);

  TextEditingController freshSalmonSushiController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController frameFifteenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray100,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Text("lbl_edit_menu".tr,
                      style: CustomTextStyles
                          .displayMediumLondrinaSolidSecondaryContainer),
                  SizedBox(height: 23.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSushi11190x190,
                      height: 190.adaptSize,
                      width: 190.adaptSize,
                      radius: BorderRadius.circular(95.h)),
                  SizedBox(height: 15.v),
                  _buildFreshSalmonSushi(context),
                  SizedBox(height: 15.v),
                  _buildZipcode(context),
                  SizedBox(height: 15.v),
                  _buildFrameFifteen(context),
                  SizedBox(height: 27.v),
                  _buildPerbaharui(context),
                  SizedBox(height: 42.v),
                  _buildHapusMenu(context),
                  SizedBox(height: 37.v),
                  _buildFive(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 128.v,
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgImage9,
            margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 91.v),
            onTap: () {
              onTapImageNine(context);
            }),
        centerTitle: true,
        title: SizedBox(
            height: 128.9.v,
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
  Widget _buildFreshSalmonSushi(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: freshSalmonSushiController,
        hintText: "msg_fresh_salmon_sushi2".tr,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
        filled: true,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: zipcodeController,
        hintText: "lbl_18000".tr,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
        filled: true,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildFrameFifteen(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: frameFifteenController,
        hintText: "msg_nikmati_kelezatan4".tr,
        hintStyle: CustomTextStyles.bodySmallMPLUS1Bluegray400,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
        filled: true,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildPerbaharui(BuildContext context) {
    return CustomOutlinedButton(
        width: 116.h,
        text: "lbl_perbaharui".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL101,
        onPressed: () {
          onTapPerbaharui(context);
        });
  }

  /// Section Widget
  Widget _buildHapusMenu(BuildContext context) {
    return CustomOutlinedButton(
        height: 28.v,
        width: 178.h,
        text: "lbl_hapus_menu".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL5,
        onPressed: () {
          onTapHapusMenu(context);
        });
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 4.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 2.v), Divider()]));
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapImageNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapPerbaharui(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapHapusMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }
}

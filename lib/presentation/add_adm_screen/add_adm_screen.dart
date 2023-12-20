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
class AddAdmScreen extends StatelessWidget {
  AddAdmScreen({Key? key}) : super(key: key);

  TextEditingController namaMenuController = TextEditingController();

  TextEditingController hargaController = TextEditingController();

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
                  Text("lbl_tambah_menu".tr,
                      style:
                          CustomTextStyles.displayMediumLondrinaSolidAmberA700),
                  SizedBox(height: 24.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSushi11190x190,
                      height: 190.adaptSize,
                      width: 190.adaptSize,
                      radius: BorderRadius.circular(95.h)),
                  SizedBox(height: 15.v),
                  _buildNamaMenu(context),
                  SizedBox(height: 15.v),
                  _buildHarga(context),
                  SizedBox(height: 15.v),
                  _buildDeskripsi(context),
                  SizedBox(height: 24.v),
                  _buildTambahMenu(context),
                  SizedBox(height: 38.v),
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
  Widget _buildNamaMenu(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: namaMenuController,
        hintText: "lbl_nama_menu".tr,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
        filled: true,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildHarga(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: hargaController,
        hintText: "lbl_harga".tr,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
        filled: true,
        fillColor: appTheme.whiteA700);
  }

  /// Section Widget
  Widget _buildDeskripsi(BuildContext context) {
    return CustomOutlinedButton(
        width: 241.h,
        text: "lbl_deskripsi".tr,
        buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildTambahMenu(BuildContext context) {
    return CustomOutlinedButton(
        width: 153.h,
        text: "lbl_tambah_menu".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL10,
        onPressed: () {
          onTapTambahMenu(context);
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
  onTapTambahMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapHapusMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }
}

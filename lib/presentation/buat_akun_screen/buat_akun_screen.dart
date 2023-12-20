import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_subtitle.dart';
import 'package:ui_food_01/widgets/app_bar/appbar_title.dart';
import 'package:ui_food_01/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';
import 'package:ui_food_01/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BuatAkunScreen extends StatelessWidget {
  BuatAkunScreen({Key? key}) : super(key: key);

  TextEditingController namaLengkapController = TextEditingController();

  TextEditingController tanggalLahirController = TextEditingController();

  TextEditingController tanggalLahirTwoController = TextEditingController();

  TextEditingController nomorTeleponController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.orange50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 48.v),
                      _buildNamaLengkap(context),
                      SizedBox(height: 19.v),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: theme.colorScheme.primary, width: 1.h),
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Container(
                              height: 38.v,
                              width: 241.h,
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    _buildTanggalLahir(context),
                                    _buildTanggalLahirTwo(context)
                                  ]))),
                      SizedBox(height: 19.v),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: theme.colorScheme.primary, width: 1.h),
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Container(
                              height: 38.v,
                              width: 241.h,
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("lbl_nomor_telepon".tr,
                                            style:
                                                theme.textTheme.bodyMedium))),
                                _buildNomorTelepon(context)
                              ]))),
                      SizedBox(height: 55.v),
                      _buildUserName(context),
                      SizedBox(height: 19.v),
                      _buildPassword(context),
                      SizedBox(height: 29.v),
                      _buildBuatAkun(context),
                      Spacer(),
                      _buildNine(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 157.v,
        centerTitle: true,
        title: Column(children: [
          Container(
              height: 59.000008.v,
              width: 228.h,
              margin: EdgeInsets.only(left: 25.h, right: 27.h),
              child: Stack(alignment: Alignment.center, children: [
                AppbarSubtitle(text: "lbl_stasiun2".tr),
                AppbarSubtitle(text: "lbl_stasiun2".tr)
              ])),
          SizedBox(
              height: 59.v,
              width: 281.h,
              child: Stack(alignment: Alignment.center, children: [
                AppbarTitle(text: "lbl_makanan".tr),
                AppbarTitle(text: "lbl_makanan".tr)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildNamaLengkap(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: namaLengkapController,
        hintText: "lbl_nama_lengkap".tr);
  }

  /// Section Widget
  Widget _buildTanggalLahir(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: tanggalLahirController,
        hintText: "lbl_tanggal_lahir".tr,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildTanggalLahirTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            width: 79.h,
            controller: tanggalLahirTwoController,
            hintText: "lbl_tanggal_lahir".tr,
            alignment: Alignment.centerLeft));
  }

  /// Section Widget
  Widget _buildNomorTelepon(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: nomorTeleponController,
        hintText: "lbl_nomor_telepon".tr,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: userNameController,
        hintText: "lbl_username".tr);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        width: 241.h,
        controller: passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildBuatAkun(BuildContext context) {
    return CustomOutlinedButton(
        width: 116.h,
        text: "lbl_buat_akun".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15,
        onPressed: () {
          onTapBuatAkun(context);
        });
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 4.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 2.v), Divider()]));
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapBuatAkun(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }
}

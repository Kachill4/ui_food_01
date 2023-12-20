import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/presentation/android_large_two_page/android_large_two_page.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';
import 'package:ui_food_01/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeOneScreen extends StatelessWidget {
  AndroidLargeOneScreen({Key? key}) : super(key: key);

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
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtAdmin(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 10.h),
                                  child: Text("lbl_admin".tr,
                                      style: CustomTextStyles
                                          .bodySmallHoltwoodOneSCWhiteA700)))),
                      Spacer(flex: 40),
                      Text("lbl_stasiun2".tr,
                          style: CustomTextStyles.displayLargeYellow900),
                      Text("lbl_makanan".tr,
                          style: theme.textTheme.displayLarge),
                      SizedBox(height: 21.v),
                      CustomTextFormField(
                          width: 241.h,
                          controller: userNameController,
                          hintText: "lbl_username".tr),
                      SizedBox(height: 19.v),
                      CustomTextFormField(
                          width: 241.h,
                          controller: passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true),
                      SizedBox(height: 22.v),
                      CustomOutlinedButton(
                        onPressed: () {
                          onTapTxtLogin(context);
                        },
                        width: 95.h,
                        text: "lbl_login".tr,
                        buttonStyle: CustomButtonStyles.outlineOnPrimary,
                        buttonTextStyle: theme.textTheme.bodyMedium!,
                      ),
                      SizedBox(height: 29.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtBelumPunyaAkun(context);
                          },
                          child: Text("msg_belum_punya_akun".tr,
                              style: CustomTextStyles.bodySmallOrange900)),
                      Spacer(flex: 59),
                      _buildFiveSection(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildFiveSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 122.h, vertical: 4.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 2.v), Divider()]));
  }

  /// Navigates to the loginAdmScreen when the action is triggered.
  onTapTxtAdmin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginAdmScreen);
  }

  /// Navigates to the buatAkunScreen when the action is triggered.
  onTapTxtBelumPunyaAkun(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buatAkunScreen);
  }

  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeTwoTabContainerScreen);
  }
}

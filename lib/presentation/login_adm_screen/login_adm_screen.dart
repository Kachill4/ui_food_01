import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';
import 'package:ui_food_01/widgets/custom_outlined_button.dart';
import 'package:ui_food_01/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginAdmScreen extends StatelessWidget {
  LoginAdmScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray100,
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
                                onTapTxtCUSTOMER(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text("lbl_customer".tr,
                                      style: CustomTextStyles
                                          .bodySmallHoltwoodOneSCAmberA700)))),
                      Spacer(flex: 27),
                      SizedBox(
                          height: 113.v,
                          width: 228.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("lbl_stasiun2".tr,
                                    style: CustomTextStyles
                                        .displayLargeYellow900)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("lbl_admin".tr,
                                    style: CustomTextStyles
                                        .displayMediumHoltwoodOneSCWhiteA700))
                          ])),
                      Text("lbl_makanan".tr,
                          style: theme.textTheme.displayLarge),
                      SizedBox(height: 22.v),
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
                          width: 95.h,
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.outlineOnPrimary,
                          buttonTextStyle: theme.textTheme.bodyMedium!,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      Spacer(flex: 72),
                      _buildFive(context)
                    ])))));
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

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapTxtCUSTOMER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }

  /// Navigates to the homeAdmScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeAdmScreen);
  }
}

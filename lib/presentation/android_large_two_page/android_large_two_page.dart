import '../android_large_two_page/widgets/androidlargetwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';

class AndroidLargeTwoPage extends StatefulWidget {
  const AndroidLargeTwoPage({Key? key}) : super(key: key);

  @override
  AndroidLargeTwoPageState createState() => AndroidLargeTwoPageState();
}

class AndroidLargeTwoPageState extends State<AndroidLargeTwoPage>
    with AutomaticKeepAliveClientMixin<AndroidLargeTwoPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(top: 167.v),
                        child: Column(children: [
                          SizedBox(height: 23.v),
                          Column(children: [
                            _buildAndroidLargeTwo(context),
                            SizedBox(height: 160.v),
                            _buildFour(context)
                          ])
                        ]))))));
  }

  /// Section Widget
  Widget _buildAndroidLargeTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 193.v,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.h),
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return AndroidlargetwoItemWidget(onTapFreshSalmonSushi: () {
                onTapFreshSalmonSushi(context);
              });
            }));
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

  /// Navigates to the detilMenufourScreen when the action is triggered.
  onTapFreshSalmonSushi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detilMenufourScreen);
  }
}

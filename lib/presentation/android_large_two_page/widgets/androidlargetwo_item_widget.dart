import 'package:flutter/material.dart';
import 'package:ui_food_01/core/app_export.dart';

// ignore: must_be_immutable
class AndroidlargetwoItemWidget extends StatelessWidget {
  AndroidlargetwoItemWidget({
    Key? key,
    this.onTapFreshSalmonSushi,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFreshSalmonSushi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFreshSalmonSushi!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 2.v,
        ),
        decoration: AppDecoration.fillOrangeA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            CustomImageView(
              imagePath: ImageConstant.imgSushi11,
              height: 119.v,
              width: 131.h,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 97.h,
              child: Text(
                "msg_fresh_salmon_sushi".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumMPLUS1WhiteA700,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              "lbl_rp_35_000_00".tr,
              style: CustomTextStyles.bodyLargeMarkoOne,
            ),
          ],
        ),
      ),
    );
  }
}

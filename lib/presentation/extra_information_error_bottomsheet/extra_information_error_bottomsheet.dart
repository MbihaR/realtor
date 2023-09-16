import 'controller/extra_information_error_controller.dart';
import 'package:flutter/material.dart';
import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ExtraInformationErrorBottomsheet extends StatelessWidget {
  ExtraInformationErrorBottomsheet(this.controller);

  ExtraInformationErrorController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 24,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: SizedBox(
                  width: getHorizontalSize(
                    60,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      3,
                    ),
                    thickness: getVerticalSize(
                      3,
                    ),
                    color: ColorConstant.blueGray600,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 92,
                  top: 22,
                  right: 92,
                ),
                padding: getPadding(
                  all: 16,
                ),
                decoration: AppDecoration.fillRedA20063.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder71,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      child: Container(
                        padding: getPadding(
                          all: 20,
                        ),
                        decoration: AppDecoration.fillRedA20067.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder55,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: getPadding(
                                left: 30,
                                top: 19,
                                right: 31,
                                bottom: 19,
                              ),
                              decoration: AppDecoration.txtFillRedA200.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder35,
                              ),
                              child: Text(
                                "lbl36".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtMontserratSemiBold25.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.75,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  250,
                ),
                margin: getMargin(
                  left: 34,
                  top: 28,
                  right: 41,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_aw_snap_someth2".tr,
                        style: TextStyle(
                          color: ColorConstant.blueGray80001,
                          fontSize: getFontSize(
                            25,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          letterSpacing: getHorizontalSize(
                            0.75,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_error_happened".tr,
                        style: TextStyle(
                          color: ColorConstant.blueGray80001,
                          fontSize: getFontSize(
                            25,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                          letterSpacing: getHorizontalSize(
                            0.75,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "msg_lorem_ipsum_dol5".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRegular12Bluegray600.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.36,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          70,
                        ),
                        text: "lbl_close".tr,
                        margin: getMargin(
                          right: 4,
                        ),
                        variant: ButtonVariant.FillGray100,
                        fontStyle:
                            ButtonFontStyle.RalewaySemiBold16Bluegray80001_1,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          70,
                        ),
                        text: "lbl_retry".tr,
                        margin: getMargin(
                          left: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

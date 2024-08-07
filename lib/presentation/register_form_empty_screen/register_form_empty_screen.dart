import 'controller/register_form_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/custom_button.dart';
import 'package:realtor/widgets/custom_icon_button.dart';
import 'package:realtor/widgets/custom_text_form_field.dart';
import 'package:realtor/domain/googleauth/google_auth_helper.dart';
import 'package:realtor/domain/facebookauth/facebook_auth_helper.dart';
class RegisterFormEmptyScreen extends GetWidget<RegisterFormEmptyController> {
  @override Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CustomIconButton(
                        height: 50,
                        width: 50,
                        variant: IconButtonVariant.FillGray100,
                        shape: IconButtonShape.CircleBorder25,
                        padding: IconButtonPadding.PaddingAll16,
                        onTap: () {onTapBtnArrowleft();},
                        child: CustomImageView(svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(top: 55),
                          child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "lbl_create_your".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray80001,
                                            fontSize: getFontSize(25),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: getHorizontalSize(0.75))),
                                    TextSpan(
                                        text: "lbl_account3".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray80001,
                                            fontSize: getFontSize(25),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: getHorizontalSize(0.75)))]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text(
                              "msg_quis_nostrud_ex2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12Bluegray600.copyWith(letterSpacing: getHorizontalSize(0.36)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.fullnameController,
                          hintText: "lbl_full_name".tr,
                          margin: getMargin(top: 51),
                          padding: TextFormFieldPadding.PaddingT26,
                          prefix: Container(
                              margin: getMargin(left: 16, top: 25, right: 10, bottom: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(getHorizontalSize(50)),
                                      bottomRight: Radius.circular(getHorizontalSize(50)))),
                              child: CustomImageView(svgPath: ImageConstant.imgUser20x20)),
                          prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_email".tr, margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(70)),
                          isObscureText: true),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 13),
                              child: Text("lbl_show_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanSemiBold12Bluegray80001.copyWith(letterSpacing: getHorizontalSize(0.36))))),
                      CustomButton(
                          height: getVerticalSize(70),
                          text: "lbl_register2".tr,
                          margin: getMargin(top: 36),
                          onTap: onTapRegister),
                      Container(
                          height: getVerticalSize(22),
                          width: getHorizontalSize(327),
                          margin: getMargin(top: 20),
                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(bottom: 9),
                                        child: SizedBox(width: getHorizontalSize(327),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.blueGray50)))),
                                CustomButton(
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(35),
                                    text: "lbl_or".tr,
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll5,
                                    fontStyle: ButtonFontStyle.RalewaySemiBold10Indigo200,
                                    alignment: Alignment.center)])),
                      Padding(
                          padding: getPadding(top: 8, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.gray100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusStyle.roundedBorder25),
                                  child: Container(
                                      height: getVerticalSize(70),
                                      width: getHorizontalSize(158),
                                      padding: getPadding(top: 22, bottom: 22),
                                      decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                                      child: Stack(children: [CustomImageView(
                                          svgPath: ImageConstant.imgGoogle, height: getSize(25),
                                          width: getSize(25), alignment: Alignment.topCenter,
                                          onTap: () {onTapImgGoogle();})]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0, margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray100,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusStyle.roundedBorder25),
                                    child: Container(height: getVerticalSize(70),
                                        width: getHorizontalSize(158),
                                        padding: getPadding(top: 22, bottom: 22),
                                        decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                                        child: Stack(children: [CustomImageView(
                                            svgPath: ImageConstant.imgFacebook, height: getSize(25),
                                            width: getSize(25), alignment: Alignment.topCenter,
                                            onTap: () {onTapImgFacebook();})])))]))])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 77, right: 78, bottom: 24),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(
                        "msg_already_have_an3".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular14.copyWith(letterSpacing: getHorizontalSize(0.42))),
                      GestureDetector(
                          onTap: () {onTapTxtRegisterOne();},
                          child: Padding(
                              padding: getPadding(left: 4),
                              child: Text("lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold14IndigoA400.copyWith(letterSpacing: getHorizontalSize(0.42)))))])))); }
onTapBtnArrowleft() { Get.back(); } 
onTapRegister() { Get.toNamed(AppRoutes.formOtpScreen); } 
onTapImgGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapImgFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
onTapTxtRegisterOne() { Get.toNamed(AppRoutes.loginScreen); } 
 }

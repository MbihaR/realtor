import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/app_bar/appbar_iconbutton.dart';
import 'package:realtor/widgets/app_bar/custom_app_bar.dart';
import 'package:realtor/widgets/custom_button.dart';
import 'package:realtor/widgets/custom_icon_button.dart';
import 'package:realtor/domain/googleauth/google_auth_helper.dart';
import 'package:realtor/domain/facebookauth/facebook_auth_helper.dart';
class LoginScreen extends GetWidget<LoginController> {
  @override Widget build(
    BuildContext context) {
  return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: Container(width: double.maxFinite,
              padding: getPadding(all: 10),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(height: getVerticalSize(416),
                      width: getHorizontalSize(355),
                      child: Stack(alignment: Alignment.topCenter,
                          children: [CustomImageView(
                              imagePath: ImageConstant.imgBackgroundillustration416x3551,
                              height: getVerticalSize(416),
                              width: getHorizontalSize(355),
                              alignment: Alignment.center),
                            CustomAppBar(
                                height: getVerticalSize(64),
                                leadingWidth: 74,
                                leading: AppbarIconbutton(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(left: 24),
                                    onTap: onTapArrowleft11),
                                actions: [CustomIconButton(
                                    height: 50, width: 50,
                                    margin: getMargin(left: 24, right: 24),
                                    variant: IconButtonVariant.FillBluegray80001,
                                    shape: IconButtonShape.CircleBorder25,
                                    padding: IconButtonPadding.PaddingAll16,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgQuestionWhiteA700))])])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 14, top: 35),
                            child: RichText(
                                text: TextSpan(
                                    children: [TextSpan(
                                        text: "lbl_ready_to".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray80001,
                                            fontSize: getFontSize(25),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: getHorizontalSize(0.75))),
                                      TextSpan(
                                          text: "lbl_explore2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.blueGray80001,
                                              fontSize: getFontSize(25),
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w800,
                                              letterSpacing: getHorizontalSize(0.75)))]),
                                textAlign: TextAlign.left))),
                    CustomButton(
                        height: getVerticalSize(70),
                        text: "msg_continue_with_e".tr,
                        margin: getMargin(left: 14, top: 39, right: 14),
                        padding: ButtonPadding.PaddingT25,
                        prefixWidget: Container(margin: getMargin(right: 10),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgMail20x20)),
                        onTap: onTapContinuewithemail),
                    Container(
                        height: getVerticalSize(22),
                        width: getHorizontalSize(327),
                        margin: getMargin(top: 20),
                        child: Stack(
                            alignment: Alignment.center,
                            children: [Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(327),
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
                        padding: getPadding(left: 14, top: 20, right: 14, bottom: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.gray100,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25),
                                child: Container(height: getVerticalSize(70),
                                    width: getHorizontalSize(158),
                                    padding: getPadding(top: 22, bottom: 22),
                                    decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                                    child: Stack(children: [CustomImageView(
                                        svgPath: ImageConstant.imgGoogle, height: getSize(25), width: getSize(25),
                                        alignment: Alignment.topCenter, onTap: () {onTapImgGoogle();})]))),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0, margin: getMargin(left: 10),
                                  color: ColorConstant.gray100,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25),
                                  child: Container(height: getVerticalSize(70),
                                      width: getHorizontalSize(158),
                                      padding: getPadding(top: 22, bottom: 22),
                                      decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                                      child: Stack(children: [CustomImageView(
                                          svgPath: ImageConstant.imgFacebook, height: getSize(25),
                                          width: getSize(25),
                                          alignment: Alignment.topCenter,
                                          onTap: () {onTapImgFacebook();})])))]))])),
          bottomNavigationBar: Padding(padding: getPadding(left: 77, right: 77, bottom: 24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Padding(
                      padding: getPadding(bottom: 1),
                      child: Text(
                          "msg_don_t_have_an_a2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular14.copyWith(letterSpacing: getHorizontalSize(0.42)))),
                    GestureDetector(
                        onTap: () {onTapTxtRegister();},
                        child: Padding(
                            padding: getPadding(left: 4, top: 1),
                            child: Text(
                                "lbl_register2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayBold14IndigoA400.copyWith(letterSpacing: getHorizontalSize(0.42)))))])))); }
onTapArrowleft11() { Get.back(); } 
onTapContinuewithemail() { Get.toNamed(AppRoutes.formEmptyScreen); }//Get.toNamed(AppRoutes.homePage);
// onTapImgGoogle(){
//   Get.snackbar('Login', 'Succesfful login welcome');
//   Get.toNamed(AppRoutes.homeContainerScreen);
// }
  onTapImgGoogle() async  {
          await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
            Get.toNamed(AppRoutes.homeContainerScreen);
            Get.snackbar('Login', 'Succesfful login welcome');
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            print(onError.toString());
            Get.snackbar('Error', onError.toString());
        });
         }
onTapImgFacebook() async  {
            await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
onTapTxtRegister() { Get.toNamed(AppRoutes.registerFormEmptyScreen); } 
 }

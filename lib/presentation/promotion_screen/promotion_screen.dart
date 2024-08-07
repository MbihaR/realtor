import 'controller/promotion_controller.dart';
import 'package:flutter/material.dart';import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:realtor/widgets/app_bar/custom_app_bar.dart';import 'package:realtor/widgets/custom_button.dart';
import 'package:realtor/widgets/custom_icon_button.dart';class PromotionScreen extends GetWidget<PromotionController> {@override Widget build(BuildContext context) {
 return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700,
     appBar: CustomAppBar(height: getVerticalSize(77), leadingWidth: 74,
         leading: AppbarIconbutton2(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 3, bottom: 3), onTap: onTapArrowleft25), actions: [
 AppbarIconbutton2(svgPath: ImageConstant.imgUpload50x50,
     margin: getMargin(left: 24, top: 3, right: 24, bottom: 3))]),
     body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center,
    child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 32), color: ColorConstant.indigoA400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: getVerticalSize(200), width: getHorizontalSize(327),
    padding: getPadding(top: 1, bottom: 1), decoration: AppDecoration.fillIndigoA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
            child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topLeft,
    child: Padding(padding: getPadding(left: 22, top: 33),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
            children: [Container(width: getHorizontalSize(97), child: Text("msg_halloween_sale".tr, maxLines: null,
        textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18WhiteA700.copyWith(
                letterSpacing: getHorizontalSize(0.54)))),
         Padding(padding: getPadding(top: 8), child: Text("msg_all_discount_up".tr,
             overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular10WhiteA700))]))),
 CustomImageView(imagePath: ImageConstant.imgSubtract145x207,
     height: getVerticalSize(164), width: getHorizontalSize(207), alignment: Alignment.bottomRight)])))),
  Padding(padding: getPadding(left: 24, top: 24, right: 60),
      child: Text("msg_limited_time_ha".tr, maxLines: null, textAlign: TextAlign.left,
     style: AppStyle.txtRalewayRomanRegular25.copyWith(letterSpacing: getHorizontalSize(0.75)))),
  Padding(padding: getPadding(left: 24, top: 9), child: Row(children: [
   CustomImageView(svgPath: ImageConstant.imgCalendar9x9,
       height: getSize(9), width: getSize(9), margin: getMargin(bottom: 1)),
 Padding(padding: getPadding(left: 2),
     child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_october".tr,
         style: TextStyle(color: ColorConstant.blueGray600, fontSize: getFontSize(8),
    fontFamily: 'Raleway', fontWeight: FontWeight.w400)),
  TextSpan(text: "lbl_27_2022".tr, style: TextStyle(color: ColorConstant.blueGray600, fontSize: getFontSize(8),
      fontFamily: 'Montserrat', fontWeight: FontWeight.w400))]), textAlign: TextAlign.left))])),
  Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 24, top: 24, right: 24),
      padding: getPadding(all: 16), decoration: AppDecoration.gradientGreenA40063TealA70063.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min, children: [
         CustomIconButton(height: 53, width: 53, variant: IconButtonVariant.FillGreenA400, shape: IconButtonShape.RoundedBorder17,
             padding: IconButtonPadding.PaddingAll16,
        child: CustomImageView(svgPath: ImageConstant.imgTicket53x53)),
 Expanded(child: Padding(padding: getPadding(left: 16, top: 8, right: 3, bottom: 7),
     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_hlwn40".tr, overflow: TextOverflow.ellipsis,
     textAlign: TextAlign.left, style: AppStyle.txtMontserratBold18.copyWith(letterSpacing: getHorizontalSize(0.54))),
          Padding(padding: getPadding(top: 4), child: RichText(text: TextSpan(children: [
      TextSpan(text: "msg_use_this_coupon2".tr, style: TextStyle(color: ColorConstant.blueGray600,
    fontSize: getFontSize(9), fontFamily: 'Raleway', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.27))),
           TextSpan(text: "msg_40_off_on_your".tr,
      style: TextStyle(color: ColorConstant.blueGray600, fontSize: getFontSize(9), fontFamily: 'Montserrat', fontWeight: FontWeight.w400,
          letterSpacing: getHorizontalSize(0.27)))]), textAlign: TextAlign.left))])))]))),
  Container(height: getVerticalSize(245), width: double.maxFinite,
      margin: getMargin(top: 27), child: Stack(alignment: Alignment.bottomCenter,
          children: [Align(alignment: Alignment.topCenter,
              child: Container(width: getHorizontalSize(325),
                  child: Text("msg_lorem_ipsum_dol7".tr, maxLines: null,
                      textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanRegular12Bluegray600.copyWith(letterSpacing: getHorizontalSize(0.36))))),
       Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(all: 24),
           decoration: AppDecoration.gradientWhiteA700WhiteA700001,
           child: Column(mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end, children: [
            CustomButton(height: getVerticalSize(70),
                text: "lbl_start_explore".tr, margin: getMargin(top: 65),
            onTap: onTapStartExplore)
               ])))]))])))); }
onTapArrowleft25() { Get.back(); }
onTapStartExplore(){Get.toNamed(AppRoutes.realEstatesListByCategoryScreen);}
 }

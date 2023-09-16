import '../property_details_screen/widgets/chipviewlayout_item_widget.dart';
import '../property_details_screen/widgets/gridshape6_item_widget.dart';
import '../property_details_screen/widgets/layout20_item_widget.dart';
import '../property_details_screen/widgets/layout21_item_widget.dart';
import '../property_details_screen/widgets/listshape4_item_widget.dart';
import 'controller/property_details_controller.dart';import 'dart:async';
import 'models/chipviewlayout_item_model.dart';
import 'models/gridshape6_item_model.dart';
import 'models/layout20_item_model.dart';
import 'models/layout21_item_model.dart';
import 'models/listshape4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/app_bar/appbar_iconbutton.dart';
import 'package:realtor/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:realtor/widgets/app_bar/custom_app_bar.dart';
import 'package:realtor/widgets/custom_button.dart';
import 'package:realtor/widgets/custom_drop_down.dart';
import 'package:realtor/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class PropertyDetailsScreen extends GetWidget<PropertyDetailsController> {
  Completer<GoogleMapController> googleMapController = Completer();
@override Widget build(BuildContext context) {
  return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700,
    body: Container(width: double.maxFinite,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
    children: [Expanded(child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(height: getVerticalSize(524), width: double.maxFinite,
          child: Stack(alignment: Alignment.center,
             children: [CustomImageView(imagePath: ImageConstant.imgShape520x375,
            height: getVerticalSize(520), width: getHorizontalSize(375),
            alignment: Alignment.center), Align(alignment: Alignment.center,
              child: Container(height: getVerticalSize(518), width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(imagePath: ImageConstant.imgShape518x375, height: getVerticalSize(518),
                    width: getHorizontalSize(375), alignment: Alignment.center),
                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, right: 24),
                      child: Column(mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                       CustomAppBar(
                         height: getVerticalSize(50), leadingWidth: 74, leading:
                        AppbarIconbutton(svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 24), onTap: onTapArrowleft23),
                        actions: [AppbarIconbutton2(svgPath: ImageConstant.imgUpload50x50,
                             margin: getMargin(left: 24), onTap: onShare),
                        CustomIconButton(height: 50, width: 50, margin: getMargin(left: 15, right: 24),
                         variant: IconButtonVariant.FillRedA200,
                         shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16,
                            child: CustomImageView(svgPath: ImageConstant.imgFavoriteWhiteA700),
                             onTap: onLike)]),
                        CustomImageView(imagePath: ImageConstant.imgShape60x601,
                         height: getSize(60), width: getSize(60),
                         radius: BorderRadius.circular(getHorizontalSize(18)), margin: getMargin(top: 231)),
                        CustomImageView(imagePath: ImageConstant.imgShape60x602,
                          height: getSize(60), width: getSize(60),
                          radius: BorderRadius.circular(getHorizontalSize(18)), margin: getMargin(top: 5)),
                        Padding(padding: getPadding(top: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end, children: [
                           Container(width: getHorizontalSize(95), margin: getMargin(top: 10),
                            padding: getPadding(left: 24, top: 15, right: 24, bottom: 15),
                             decoration: AppDecoration.fillLime900aa.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                               child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                 CustomImageView(imagePath: ImageConstant.imgText13, height: getVerticalSize(18),
                                   width: getHorizontalSize(15)),
                                 Padding(padding: getPadding(left: 8, top: 1), child: Text("lbl_4_9".tr,
                               overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                               style: AppStyle.txtMontserratBold14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.42))))])),
                           Container(width: getHorizontalSize(124), margin: getMargin(left: 6, top: 10),
                             padding: getPadding(left: 24, top: 15, right: 24, bottom: 15),
                             decoration: AppDecoration.fillBluegray700a3.copyWith(
                                 borderRadius: BorderRadiusStyle.roundedBorder25),
                             child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                 children: [CustomImageView(imagePath: ImageConstant.imgButtoncategory,
                                 height: getVerticalSize(18), width: getHorizontalSize(15)),
                              Padding(padding: getPadding(left: 8, top: 4, bottom: 1),
                              child: Text("lbl_apartment".tr, overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayMedium10WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.3))))])),
                           Container(height: getSize(60), width: getSize(60), margin: getMargin(left: 42),
                            child: Stack(alignment: Alignment.center,
                              children: [CustomImageView(imagePath: ImageConstant.imgShape60x603, height: getSize(60), width: getSize(60),
                              radius: BorderRadius.circular(getHorizontalSize(18)), alignment: Alignment.center),
                              Align(alignment: Alignment.center, child: Text("lbl_34".tr, overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium18))])
            )]))])))])))])),
            Padding(padding: getPadding(left: 24, top: 13, right: 24),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Padding(padding: getPadding(top: 2),
                    child: Text("lbl_wings_tower".tr, overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left, style: AppStyle.txtRalewayBold25)),
                  Padding(padding: getPadding(bottom: 1),
                      child: Text("lbl_220".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold25Bluegray80001))])),
            Padding(padding: getPadding(left: 24, top: 6, right: 24),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(svgPath: ImageConstant.imgLocation9x9, height: getSize(12),
               width: getSize(12), margin: getMargin(top: 1, bottom: 2)),
                Padding(padding: getPadding(left: 2),
                   child: Text("msg_jakarta_indone".tr,
                 overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                 style: AppStyle.txtRalewayRegular12Bluegray600)),
                 Spacer(),
                Text("lbl_per_month".tr, overflow: TextOverflow.ellipsis,
                 textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12Bluegray600.copyWith(letterSpacing: getHorizontalSize(0.36)))])),
            Padding(padding: getPadding(left: 24, top: 18, right: 24),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Wrap(
                         runSpacing: getVerticalSize(5),
                         spacing: getHorizontalSize(5),
                         children: List<Widget>.generate(2, (index) {
                           String layoutTxt = index == 0 ? "Rent" : "Buy";
                           ChipviewlayoutItemModel model = ChipviewlayoutItemModel(layoutTxt);
                           return ChipviewlayoutItemWidget(model);
                         }),
                       ),
                    CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.FillGray100,
                      shape: IconButtonShape.CircleBorder25,
                      padding: IconButtonPadding.PaddingAll16,
                        onTap: () {onTapBtnLocationOne();}, child: CustomImageView(svgPath: ImageConstant.imgLocation7))])),
           Padding(padding: getPadding(top: 20),
               child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50)),
           Container(margin: getMargin(left: 24, top: 18, right: 24), padding: getPadding(all: 16),
               decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
               child: Row(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(imagePath: ImageConstant.imgShape53x531,
                height: getSize(53), width: getSize(53), radius: BorderRadius.circular(getHorizontalSize(26))),
                Padding(padding: getPadding(left: 16, top: 11, bottom: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                        Text("lbl_anderson".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayBold14.copyWith(letterSpacing: getHorizontalSize(0.42))),
                        Padding(padding: getPadding(top: 2),
                          child: Text("msg_real_estate_age".tr, overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular9.copyWith(letterSpacing: getHorizontalSize(0.27))))])),
                Spacer(),
                CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.OutlineGray100_1,
                    shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16,
                  child: CustomImageView(svgPath: ImageConstant.imgVolume50x50),
                   onTap: () {onTapBtnChat();},
                        //CustomImageView(svgPath: ImageConstant.imgVolume50x50, height: getSize(20), width: getSize(20),
                            //margin: getMargin(top: 17, right: 8, bottom: 16)
                )])),
          Align(alignment: Alignment.centerRight,
           child: Container(height: getVerticalSize(70),
              child: Obx(() => ListView.separated(padding: getPadding(left: 24, top: 20), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {
               return SizedBox(height: getVerticalSize(10));}, itemCount: controller.propertyDetailsModelObj.value.layout20ItemList.length,
                    itemBuilder: (context, index) {
                  Layout20ItemModel model = controller.propertyDetailsModelObj.value.layout20ItemList[index];
               return Layout20ItemWidget(model);})))),
          Align(alignment: Alignment.centerLeft,
            child: Padding(padding: getPadding(left: 24, top: 37),
              child: Text("msg_location_publ".tr,
              overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54))))),
          Align(alignment: Alignment.centerLeft,
            child: Padding(padding: getPadding(left: 25, top: 16, right: 53),
              child: Row(children: [
                CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.OutlineGray100_1, shape: IconButtonShape.CircleBorder25,
                  padding: IconButtonPadding.PaddingAll16,
                  child: CustomImageView(svgPath: ImageConstant.imgLocation50x50)),
                 Expanded(child: Padding(padding: getPadding(left: 15, top: 7, bottom: 6),
                     child: Text("msg_st_cikoko_timu".tr, maxLines: null,
                         textAlign: TextAlign.left,
                         style: AppStyle.txtRalewayRegular12.copyWith(letterSpacing: getHorizontalSize(0.36)))))]))),
           CustomDropDown(focusNode: FocusNode(),
               icon: Container(margin: getMargin(left: 30, right: 21),
                   child: CustomImageView(imagePath: ImageConstant.imgIconoirnavarrowdown,
                height: getSize(10), width: getSize(10))),
               margin: getMargin(left: 25, top: 15, right: 23), variant: DropDownVariant.OutlineBluegray50_1,
               items: controller.propertyDetailsModelObj.value.dropdownItemList,
               prefix: Container(margin: getMargin(left: 15, top: 15, right: 292, bottom: 15),
                  child: CustomImageView(svgPath: ImageConstant.imgLocation1)),
         prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(50)),
         onChanged: (value) {controller.onSelected(value);}),
           Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(65),
               child: Obx(() => ListView.separated(padding: getPadding(left: 24, top: 15),
         scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {
                  return SizedBox(height: getVerticalSize(10));}, itemCount: controller.propertyDetailsModelObj.value.layout21ItemList.length,
                         itemBuilder: (context, index) {Layout21ItemModel model = controller.propertyDetailsModelObj.value.layout21ItemList[index];
                  return Layout21ItemWidget(model);})))),
          Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25),
            child: Container(height: getVerticalSize(235), width: getHorizontalSize(327),
              decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Container(height: getVerticalSize(235), width: getHorizontalSize(327),
                  child: GoogleMap(mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746),
                   onMapCreated: (GoogleMapController controller) {
                   googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false,
                   myLocationButtonEnabled: false, myLocationEnabled: false)),
                Align(alignment: Alignment.bottomCenter,
                    child: Container(padding: getPadding(left: 116, top: 16, right: 116, bottom: 16),
                        decoration: AppDecoration.fillWhiteA7007f,
                        child: Column(mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_view_all_on_map".tr,
                                  overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayRegular12Bluegray80001.copyWith(
                                          letterSpacing: getHorizontalSize(0.36))))]))),
                Align(alignment: Alignment.topLeft,
                    child: Container(height: getVerticalSize(113),
    width: getHorizontalSize(156), margin: getMargin(left: 64, top: 41),
                        child: Stack(alignment: Alignment.bottomCenter, children: [
                          Align(alignment: Alignment.topLeft, child: Container(
                              height: getVerticalSize(51), width: getHorizontalSize(34),
                                     child: Stack(alignment: Alignment.topCenter, children: [
                                         Align(alignment: Alignment.bottomCenter, child: Container(
                                           height: getVerticalSize(18), width: getHorizontalSize(31),
                                             child: Stack(alignment: Alignment.center,
                                                children: [Align(alignment: Alignment.center, child: Container(height: getVerticalSize(18),
                                              width: getHorizontalSize(31), decoration: BoxDecoration(color: ColorConstant.orange30067,
                                                          borderRadius: BorderRadius.circular(getHorizontalSize(15))))),
                                                    Align(alignment: Alignment.center,
                                                        child: Container(height: getVerticalSize(8), width: getHorizontalSize(14),
                                                            decoration: BoxDecoration(color: ColorConstant.orange30087,
                                                                borderRadius: BorderRadius.circular(getHorizontalSize(7)))))]))),
                                         Align(alignment: Alignment.topCenter,
                                             child: Container(height: getVerticalSize(43), width: getHorizontalSize(34),
                                                 child: Stack(alignment: Alignment.topCenter, children: [
                                                     CustomImageView(svgPath: ImageConstant.imgLocation4,
                                                      height: getVerticalSize(43),
                                                      width: getHorizontalSize(34), radius: BorderRadius.circular(getHorizontalSize(3)),
                                                      alignment: Alignment.center),
                                                  CustomImageView(imagePath: ImageConstant.imgVector1, height: getSize(29),
                                                     width: getSize(29), alignment: Alignment.topCenter,
                                                     margin: getMargin(top: 2))])))]))),
                          CustomImageView(svgPath: ImageConstant.imgVector7,
                            height: getVerticalSize(71), width: getHorizontalSize(120),
                            radius: BorderRadius.circular(getHorizontalSize(2)),
                            alignment: Alignment.bottomCenter),
                          Align(alignment: Alignment.bottomRight,
                              child: Container(height: getVerticalSize(51),
                                  width: getHorizontalSize(34), margin: getMargin(bottom: 15),
                                child: Stack(alignment: Alignment.topCenter, children: [
                                  Align(alignment: Alignment.bottomCenter,
                                    child: Container(height: getVerticalSize(18), width: getHorizontalSize(31),
                                      child: Stack(alignment: Alignment.center, children: [
                                        Align(alignment: Alignment.center,
                                          child: Container(height: getVerticalSize(18), width: getHorizontalSize(31),
                                            decoration: BoxDecoration(color: ColorConstant.indigoA40067,
                                            borderRadius: BorderRadius.circular(getHorizontalSize(15))))),
                                        Align(alignment: Alignment.center,
                                          child: Container(height: getVerticalSize(8), width: getHorizontalSize(14),
                                            decoration: BoxDecoration(color: ColorConstant.indigoA40081,
                                            borderRadius: BorderRadius.circular(getHorizontalSize(7)))))]))),
                                  Align(alignment: Alignment.topCenter,
                                      child: Container(height: getVerticalSize(43), width: getHorizontalSize(34),
                                             child: Stack(alignment: Alignment.topCenter, children: [
                                                  CustomImageView(svgPath: ImageConstant.imgLocation43x34,
                                                      height: getVerticalSize(43), width: getHorizontalSize(34),
                                                      radius: BorderRadius.circular(getHorizontalSize(3)), alignment: Alignment.center),
                                                  CustomImageView(imagePath: ImageConstant.imgShape19,
                                                     height: getSize(29), width: getSize(29), alignment: Alignment.topCenter, margin: getMargin(top: 2))]
                                                 )))])))])))]))),
             Padding(padding: getPadding(left: 24, top: 36, right: 24),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("lbl_cost_of_living".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54))),
                      Padding(padding: getPadding(top: 8, bottom: 1), child: Text("lbl_view_details".tr,
                    overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold10DeeppurpleA200.copyWith(
              letterSpacing: getHorizontalSize(0.3))))])),
                Container(margin: getMargin(left: 24, top: 17, right: 24),
          padding: getPadding(all: 16),
          decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                        CustomIconButton(height: 53, width: 53, variant: IconButtonVariant.FillBluegray50,
                          shape: IconButtonShape.RoundedBorder17, padding: IconButtonPadding.PaddingAll16,
                          child: CustomImageView(imagePath: ImageConstant.imgText14)),
                        Expanded(child: Padding(padding: getPadding(left: 16, top: 8, right: 11, bottom: 7),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                    children: [RichText(text: TextSpan(children: [
                                  TextSpan(text: "lbl35".tr,
                              style: TextStyle(color: ColorConstant.blueGray80001,
                                      fontSize: getFontSize(18), fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: getHorizontalSize(0.54))), TextSpan(text: " ",
                                      style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(18),
                                          fontFamily: 'Montserrat', fontWeight: FontWeight.w700,
                                          letterSpacing: getHorizontalSize(0.54))),
                               TextSpan(text: "lbl_830".tr, style: TextStyle(
                                   color: ColorConstant.blueGray80001, fontSize: getFontSize(18),
                                   fontFamily: 'Montserrat', fontWeight: FontWeight.w700,
                                   letterSpacing: getHorizontalSize(0.54))),
                               TextSpan(text: "lbl_month2".tr, style: TextStyle(color: ColorConstant.blueGray80001,
                                   fontSize: getFontSize(10), fontFamily: 'Raleway',
                                   fontWeight: FontWeight.w600, letterSpacing: getHorizontalSize(0.54)))]),
                                        textAlign: TextAlign.left),
                             Padding(padding: getPadding(top: 4),
                                child: Text("msg_from_average_c".tr, overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular9.copyWith(
                                        letterSpacing: getHorizontalSize(0.27))))])))])),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: getPadding(left: 24, top: 40), child: Text("lbl_reviews".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54))))),
               Container(margin: getMargin(left: 24, top: 19, right: 24),
                  padding: getPadding(all: 16), decoration: AppDecoration.fillRed50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                   child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min,
                       children: [
                   CustomIconButton(height: 53, width: 53, variant: IconButtonVariant.FillDeeporangeA20026,
                      shape: IconButtonShape.RoundedBorder17, padding: IconButtonPadding.PaddingAll16,
                       child: CustomImageView(imagePath: ImageConstant.imgText13)),
                        Padding(padding: getPadding(left: 16, top: 8, bottom: 7),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start, children: [
                              Row(children: [Padding(padding: getPadding(top: 5, bottom: 4),
                                child: RatingBar.builder(initialRating: 0, minRating: 0, direction: Axis.horizontal,
                                  allowHalfRating: false, itemSize: getVerticalSize(12), itemCount: 5, updateOnDrag: true,
                                  onRatingUpdate: (rating) {}, itemBuilder: (context, _) {return Icon(Icons.star);})),
                                 Padding(padding: getPadding(left: 6),
                                    child: Text("lbl_4_9".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold18.copyWith(letterSpacing: getHorizontalSize(0.54))))]),
                              Padding(padding: getPadding(top: 3), child: Row(
                                  children: [Text("lbl_from".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayRegular9.copyWith(letterSpacing: getHorizontalSize(0.27))),
                               Padding(padding: getPadding(left: 3), child: Text("lbl_112".tr,
                                   overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular9.copyWith(
                                       letterSpacing: getHorizontalSize(0.27)))),
                               Padding(padding: getPadding(left: 3),
                                   child: Text("lbl_reviewers".tr, overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.left,
                                       style: AppStyle.txtRalewayRegular9.copyWith(
                                           letterSpacing: getHorizontalSize(0.27))))]))])),
                      Spacer(), Container(height: getVerticalSize(30),
                           width: getHorizontalSize(70), margin: getMargin(top: 12, bottom: 11),
                           child: Stack(alignment: Alignment.center,
                               children: [CustomImageView(imagePath: ImageConstant.imgShape30x302,
                                   height: getSize(30), width: getSize(30),
                                radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.centerLeft),
                             CustomImageView(imagePath: ImageConstant.imgShape30x303,
                                 height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)),
                                 alignment: Alignment.center),
                             CustomImageView(imagePath: ImageConstant.imgShape30x304,
                 height: getSize(30), width: getSize(30),
                 radius: BorderRadius.circular(getHorizontalSize(15)),
                 alignment: Alignment.centerRight)]))])),
           Padding(padding: getPadding(left: 24, top: 20, right: 24),
               child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true, separatorBuilder: (context, index) {
                  return SizedBox(height: getVerticalSize(10));},
                    itemCount: controller.propertyDetailsModelObj.value.listshape4ItemList.length,
                    itemBuilder: (context, index) {
                   Listshape4ItemModel model = controller.propertyDetailsModelObj.value.listshape4ItemList[index];
                  return Listshape4ItemWidget(model);}))),
          CustomButton(height: getVerticalSize(50), text: "msg_view_all_review".tr,
                     margin: getMargin(left: 24, top: 10, right: 24),
           variant: ButtonVariant.FillGray100, shape: ButtonShape.CircleBorder25,
           padding: ButtonPadding.PaddingAll14, fontStyle: ButtonFontStyle.RalewaySemiBold16IndigoA400_1,
           onTap: onTapViewallreviewsOne), Align(alignment: Alignment.centerLeft,
                child: Padding(padding: getPadding(left: 24, top: 44),
                  child: Text("msg_nearby_from_thi".tr,
              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,
                style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54))))),
          Padding(padding: getPadding(left: 24, top: 17, right: 24, bottom: 25),
            child: Obx(() => GridView.builder(shrinkWrap: true,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               mainAxisExtent: getVerticalSize(232), crossAxisCount: 1,
                   mainAxisSpacing: getHorizontalSize(1),
                   crossAxisSpacing: getHorizontalSize(1)),
               physics: NeverScrollableScrollPhysics(),
               itemCount: controller.propertyDetailsModelObj.value.gridshape6ItemList.length,
               itemBuilder: (context, index) {
                 Gridshape6ItemModel model = controller.propertyDetailsModelObj.value.gridshape6ItemList[index];
              return Gridshape6ItemWidget(model);}
     )))])))])))); }
onTapArrowleft23() { Get.back(); } 
onTapBtnLocationOne() { Get.toNamed(AppRoutes.viewScreen); } 
onTapViewallreviewsOne() { Get.toNamed(AppRoutes.reviewsScreen); }
onTapBtnChat(){Get.toNamed(AppRoutes.chatScreen);}
  onLike(){Get.toNamed(AppRoutes.chatScreen);}
  onShare(){Get.toNamed(AppRoutes.chatScreen);}
 }
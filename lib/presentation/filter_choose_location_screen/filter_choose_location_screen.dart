import 'controller/filter_choose_location_controller.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:realtor/core/app_export.dart';import 'package:realtor/widgets/custom_button.dart';import 'package:realtor/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class FilterChooseLocationScreen extends GetWidget<FilterChooseLocationController> {Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(height: size.height, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Container(height: size.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.center, child: Container(padding: getPadding(all: 24), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup6503), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.FillWhiteA700, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, alignment: Alignment.centerLeft, onTap: () {onTapBtnArrowleft();}, child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), Container(margin: getMargin(top: 15), padding: getPadding(all: 16), decoration: AppDecoration.outlineIndigo100b2.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(svgPath: ImageConstant.imgSearch, height: getSize(20), width: getSize(20), margin: getMargin(top: 8, bottom: 8)), Padding(padding: getPadding(left: 10, top: 10, bottom: 11), child: Text("lbl_find_location".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12Indigo200.copyWith(letterSpacing: getHorizontalSize(0.36)))), Spacer(), SizedBox(width: getHorizontalSize(1), child: Divider(height: getVerticalSize(36), thickness: getVerticalSize(36), color: ColorConstant.indigo2006c)), CustomImageView(svgPath: ImageConstant.imgUpload, height: getSize(20), width: getSize(20), margin: getMargin(left: 14, top: 8, bottom: 8))])), Container(height: getVerticalSize(51), width: getHorizontalSize(34), margin: getMargin(top: 139, right: 97), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(18), width: getHorizontalSize(31), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: getVerticalSize(18), width: getHorizontalSize(31), decoration: BoxDecoration(color: ColorConstant.orange30067, borderRadius: BorderRadius.circular(getHorizontalSize(15))))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(8), width: getHorizontalSize(14), decoration: BoxDecoration(color: ColorConstant.orange30087, borderRadius: BorderRadius.circular(getHorizontalSize(7)))))]))), Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(43), width: getHorizontalSize(34), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(svgPath: ImageConstant.imgLocation4, height: getVerticalSize(43), width: getHorizontalSize(34), radius: BorderRadius.circular(getHorizontalSize(3)), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgVector1, height: getSize(29), width: getSize(29), alignment: Alignment.topCenter, margin: getMargin(top: 2))])))])), Spacer(), CustomIconButton(height: 50, width: 50, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, child: CustomImageView(svgPath: ImageConstant.imgLocation5)), Container(width: double.maxFinite, child: Container(width: getHorizontalSize(327), margin: getMargin(top: 15), padding: getPadding(left: 15, top: 20, right: 15, bottom: 20), decoration: AppDecoration.outlineIndigo100b2.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 2), child: Text("lbl_location_detail".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54)))), Padding(padding: getPadding(top: 18, right: 31), child: Row(children: [CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.OutlineBluegray50_1, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, child: CustomImageView(svgPath: ImageConstant.imgLocation50x50)), Expanded(child: Padding(padding: getPadding(left: 15, top: 7, bottom: 5), child: Text("msg_jl_pandanaran".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12.copyWith(letterSpacing: getHorizontalSize(0.36)))))]))])))])))])), bottomNavigationBar: CustomButton(height: getVerticalSize(70), text: "lbl_choose_location".tr, margin: getMargin(left: 24, right: 24, bottom: 24), onTap: onTapChooselocationOne))); } 
onTapBtnArrowleft() { Get.back(); } 
onTapChooselocationOne() { Get.toNamed(AppRoutes.resultFilterScreen); } 
 }

import 'package:realtor/core/app_export.dart';
import 'package:realtor/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';
class HomeController extends GetxController {HomeController(this.homeModelObj);

TextEditingController formsearchemptyController = TextEditingController();

Rx<HomeModel> homeModelObj;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formsearchemptyController.dispose(); } 
onSelected(dynamic value) {
 selectedDropDownValue = value as SelectionPopupModel;
 homeModelObj.value.dropdownItemList.forEach((element) {
  element.isSelected = false;
  if (element.id == value.id) {
   element.isSelected = true;}});
 homeModelObj.value.dropdownItemList.refresh(); }
 }

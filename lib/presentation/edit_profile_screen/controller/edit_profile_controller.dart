import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController usernameController = TextEditingController();

TextEditingController phonenumberController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); usernameController.dispose(); phonenumberController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; editProfileModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); editProfileModelObj.value.dropdownItemList.refresh(); } 
 }

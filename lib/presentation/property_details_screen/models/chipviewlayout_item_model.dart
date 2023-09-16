import 'package:get/get.dart';
class ChipviewlayoutItemModel {
 Rx<String> layoutTxt;

RxBool isSelected = false.obs;
 ChipviewlayoutItemModel(String layoutTxt) : layoutTxt = Rx(layoutTxt);
 }

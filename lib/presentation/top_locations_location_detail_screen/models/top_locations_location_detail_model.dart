import 'package:get/get.dart';import 'chipview_item_model.dart';import 'listshape_item_model.dart';class TopLocationsLocationDetailModel {RxList<ChipviewItemModel> chipviewItemList = RxList.generate(2,(index) =>ChipviewItemModel());

RxList<ListshapeItemModel> listshapeItemList = RxList.generate(2,(index) => ListshapeItemModel());

 }

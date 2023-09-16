import 'package:get/get.dart';import 'layout1_item_model.dart';import 'layout3_item_model.dart';class FormDetailModel {RxList<Layout1ItemModel> layout1ItemList = RxList.generate(2,(index) =>Layout1ItemModel());

RxList<Layout3ItemModel> layout3ItemList = RxList.generate(5,(index) =>Layout3ItemModel());

 }

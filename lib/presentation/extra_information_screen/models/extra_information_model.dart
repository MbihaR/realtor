import 'package:get/get.dart';import 'layout5_item_model.dart';import 'listtype_item_model.dart';import 'layout7_item_model.dart';import 'layout9_item_model.dart';class ExtraInformationModel {RxList<Layout5ItemModel> layout5ItemList = RxList.generate(2,(index) =>Layout5ItemModel());

RxList<ListtypeItemModel> listtypeItemList = RxList.generate(3,(index) => ListtypeItemModel());

RxList<Layout7ItemModel> layout7ItemList = RxList.generate(4,(index) =>Layout7ItemModel());

RxList<Layout9ItemModel> layout9ItemList = RxList.generate(7,(index) =>Layout9ItemModel());

 }

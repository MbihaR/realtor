import 'package:get/get.dart';import 'layout12_item_model.dart';import 'layout14_item_model.dart';import 'gridshape5_item_model.dart';import 'layout16_item_model.dart';import 'editform_item_model.dart';import 'layout18_item_model.dart';import 'chipview4_item_model.dart';class EditFormModel {RxList<Layout12ItemModel> layout12ItemList = RxList.generate(2,(index) =>Layout12ItemModel());

RxList<Layout14ItemModel> layout14ItemList = RxList.generate(5,(index) =>Layout14ItemModel());

RxList<Gridshape5ItemModel> gridshape5ItemList = RxList.generate(4,(index) => Gridshape5ItemModel());

RxList<Layout16ItemModel> layout16ItemList = RxList.generate(2,(index) =>Layout16ItemModel());

RxList<EditformItemModel> editformItemList = RxList.generate(3,(index) => EditformItemModel());

RxList<Layout18ItemModel> layout18ItemList = RxList.generate(4,(index) =>Layout18ItemModel());

RxList<Chipview4ItemModel> chipview4ItemList = RxList.generate(7,(index) =>Chipview4ItemModel());

 }

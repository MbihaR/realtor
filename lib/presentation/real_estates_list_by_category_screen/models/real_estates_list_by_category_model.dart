import 'package:get/get.dart';import 'datalist_item_model.dart';import 'gridshape1_item_model.dart';class RealEstatesListByCategoryModel {RxList<DatalistItemModel> datalistItemList = RxList.generate(3,(index) => DatalistItemModel());

RxList<Gridshape1ItemModel> gridshape1ItemList = RxList.generate(4,(index) => Gridshape1ItemModel());

 }

import 'package:get/get.dart';import 'filter_item_model.dart';import 'listshape3_item_model.dart';class ResultFilterModel {RxList<FilterItemModel> filterItemList = RxList.generate(3,(index) =>FilterItemModel());

RxList<Listshape3ItemModel> listshape3ItemList = RxList.generate(3,(index) => Listshape3ItemModel());

 }

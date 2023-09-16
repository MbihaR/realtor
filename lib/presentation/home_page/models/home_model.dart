import 'package:get/get.dart';import 'category1_item_model.dart';import 'listtext_item_model.dart';
import 'layout23_item_model.dart';import 'layout24_item_model.dart';import 'layout25_item_model.dart';
import 'home_item_model.dart';
import 'package:realtor/data/models/selectionPopupModel/selection_popup_model.dart';
class HomeModel {RxList<Category1ItemModel> category1ItemList = RxList.generate(4,(index) => Category1ItemModel());

RxList<ListtextItemModel> listtextItemList = RxList.generate(2,(index) => ListtextItemModel());

RxList<Layout23ItemModel> layout23ItemList = RxList.generate(2,(index) => Layout23ItemModel());

RxList<Layout24ItemModel> layout24ItemList = RxList.generate(4,(index) => Layout24ItemModel());

RxList<Layout25ItemModel> layout25ItemList = RxList.generate(5,(index) => Layout25ItemModel());

RxList<HomeItemModel> homeItemList = RxList.generate(4,(index) => HomeItemModel());

RxList<SelectionPopupModel> dropdownItemList = [
 SelectionPopupModel(id:1,title:"Item One",isSelected:true,),
 SelectionPopupModel(id:2,title:"Item Two",),
 SelectionPopupModel(id:3,title:"Item Three",)].obs;

 }

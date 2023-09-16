import 'package:get/get.dart';import 'package:realtor/data/models/selectionPopupModel/selection_popup_model.dart';import 'listshape1_item_model.dart';import 'layout11_item_model.dart';class ExampleDataModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)].obs;

RxList<Listshape1ItemModel> listshape1ItemList = RxList.generate(3,(index) => Listshape1ItemModel());

RxList<Layout11ItemModel> layout11ItemList = RxList.generate(2,(index) => Layout11ItemModel());

 }

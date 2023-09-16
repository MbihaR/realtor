import 'package:get/get.dart';import 'category_item_model.dart';import 'list_item_model.dart';class NotificationListModel {RxList<CategoryItemModel> categoryItemList = RxList.generate(4,(index) => CategoryItemModel());

RxList<ListItemModel> listItemList = RxList.generate(3,(index) => ListItemModel());

 }

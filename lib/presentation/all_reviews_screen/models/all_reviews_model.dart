import 'package:get/get.dart';import 'ratingcategory_item_model.dart';import 'listshape2_item_model.dart';class AllReviewsModel {RxList<RatingcategoryItemModel> ratingcategoryItemList = RxList.generate(5,(index) => RatingcategoryItemModel());

RxList<Listshape2ItemModel> listshape2ItemList = RxList.generate(3,(index) => Listshape2ItemModel());

 }

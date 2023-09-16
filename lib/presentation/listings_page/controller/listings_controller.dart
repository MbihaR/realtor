import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/listings_page/models/listings_model.dart';class ListingsController extends GetxController {ListingsController(this.listingsModelObj);

Rx<ListingsModel> listingsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

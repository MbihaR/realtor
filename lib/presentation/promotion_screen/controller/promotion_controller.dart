import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/promotion_screen/models/promotion_model.dart';class PromotionController extends GetxController {Rx<PromotionModel> promotionModelObj = PromotionModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

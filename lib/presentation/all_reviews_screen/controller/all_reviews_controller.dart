import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/all_reviews_screen/models/all_reviews_model.dart';class AllReviewsController extends GetxController {Rx<AllReviewsModel> allReviewsModelObj = AllReviewsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

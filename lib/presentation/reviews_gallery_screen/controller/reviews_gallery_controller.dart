import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/reviews_gallery_screen/models/reviews_gallery_model.dart';class ReviewsGalleryController extends GetxController {Rx<ReviewsGalleryModel> reviewsGalleryModelObj = ReviewsGalleryModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

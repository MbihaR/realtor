import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/review_empty_screen/models/review_empty_model.dart';import 'package:flutter/material.dart';class ReviewEmptyController extends GetxController {TextEditingController formdateemptyController = TextEditingController();

TextEditingController formdateemptyOneController = TextEditingController();

TextEditingController formTextEmptyController = TextEditingController();

Rx<ReviewEmptyModel> reviewEmptyModelObj = ReviewEmptyModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formdateemptyController.dispose(); formdateemptyOneController.dispose(); formTextEmptyController.dispose(); } 
 }

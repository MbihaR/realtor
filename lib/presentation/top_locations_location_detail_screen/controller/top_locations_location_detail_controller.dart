import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/top_locations_location_detail_screen/models/top_locations_location_detail_model.dart';import 'package:flutter/material.dart';class TopLocationsLocationDetailController extends GetxController {TextEditingController formSearchController = TextEditingController();

Rx<TopLocationsLocationDetailModel> topLocationsLocationDetailModelObj = TopLocationsLocationDetailModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formSearchController.dispose(); } 
 }

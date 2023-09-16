import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/location_fill_screen/models/location_fill_model.dart';class LocationFillController extends GetxController {Rx<LocationFillModel> locationFillModelObj = LocationFillModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

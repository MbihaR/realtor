import 'package:realtor/core/app_export.dart';
import 'package:realtor/presentation/location_distance_bottomsheet/models/location_distance_model.dart';

class LocationDistanceController extends GetxController {
  Rx<LocationDistanceModel> locationDistanceModelObj =
      LocationDistanceModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

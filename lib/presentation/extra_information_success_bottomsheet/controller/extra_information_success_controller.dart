import 'package:realtor/core/app_export.dart';
import 'package:realtor/presentation/extra_information_success_bottomsheet/models/extra_information_success_model.dart';

class ExtraInformationSuccessController extends GetxController {
  Rx<ExtraInformationSuccessModel> extraInformationSuccessModelObj =
      ExtraInformationSuccessModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onFinish() {
    Get.offNamed(AppRoutes.listingsPage);
  }
}

import 'package:realtor/core/app_export.dart';
import 'package:realtor/presentation/transaction_page/models/transaction_model.dart';

class TransactionController extends GetxController {
  TransactionController(this.transactionModelObj);

  Rx<TransactionModel> transactionModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

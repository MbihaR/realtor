import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/history_detail_screen/models/history_detail_model.dart';class HistoryDetailController extends GetxController {Rx<HistoryDetailModel> historyDetailModelObj = HistoryDetailModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

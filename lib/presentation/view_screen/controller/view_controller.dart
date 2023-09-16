import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/view_screen/models/view_model.dart';class ViewController extends GetxController {Rx<ViewModel> viewModelObj = ViewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

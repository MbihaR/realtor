import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/top_agents_screen/models/top_agents_model.dart';class TopAgentsController extends GetxController {Rx<TopAgentsModel> topAgentsModelObj = TopAgentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

import 'package:realtor/core/app_export.dart';import 'package:realtor/presentation/example_data_page/models/example_data_model.dart';class ExampleDataController extends GetxController {ExampleDataController(this.exampleDataModelObj);

Rx<ExampleDataModel> exampleDataModelObj;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; exampleDataModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); exampleDataModelObj.value.dropdownItemList.refresh(); } 
 }

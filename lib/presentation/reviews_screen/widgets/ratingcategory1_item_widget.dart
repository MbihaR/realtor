import '../controller/reviews_controller.dart';
import '../models/ratingcategory1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:realtor/core/app_export.dart';

// ignore: must_be_immutable
class Ratingcategory1ItemWidget extends StatelessWidget {
  Ratingcategory1ItemWidget(this.ratingcategory1ItemModelObj);

  Ratingcategory1ItemModel ratingcategory1ItemModelObj;

  var controller = Get.find<ReviewsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 10,
            bottom: 1,
          ),
          padding: getPadding(
            left: 23,
            top: 15,
            right: 23,
            bottom: 15,
          ),
          decoration: AppDecoration.fillGreenA400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgText13,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  15,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 2,
                  bottom: 2,
                ),
                child: Obx(
                  () => Text(
                    ratingcategory1ItemModelObj.textOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

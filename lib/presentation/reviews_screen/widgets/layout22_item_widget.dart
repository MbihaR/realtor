import '../controller/reviews_controller.dart';
import '../models/layout22_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:realtor/core/app_export.dart';

// ignore: must_be_immutable
class Layout22ItemWidget extends StatelessWidget {
  Layout22ItemWidget(this.layout22ItemModelObj);

  Layout22ItemModel layout22ItemModelObj;

  var controller = Get.find<ReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 10,
        bottom: 10,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShape50x509,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                25,
              ),
            ),
            margin: getMargin(
              bottom: 58,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Text(
                        layout22ItemModelObj.nameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayBold12.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.36,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 117,
                        top: 2,
                        bottom: 2,
                      ),
                      child: RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemSize: getVerticalSize(
                          10,
                        ),
                        itemCount: 5,
                        updateOnDrag: true,
                        onRatingUpdate: (rating) {},
                        itemBuilder: (context, _) {
                          return Icon(
                            Icons.star,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    right: 5,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_dol4".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.3,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Text(
                    "lbl_10_mins_ago".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

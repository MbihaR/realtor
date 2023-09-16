import 'package:flutter/material.dart';
import 'package:realtor/core/app_export.dart';
import 'package:realtor/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton4 extends StatelessWidget {
  AppbarIconbutton4({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.OutlineIndigo1008c,
          shape: IconButtonShape.CircleBorder25,
          padding: IconButtonPadding.PaddingAll16,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}

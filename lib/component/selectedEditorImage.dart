import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/component/positionedButton.dart';
import 'package:leadkart/helper/controllerInstances.dart';
import 'package:leadkart/helper/enums.dart';
import 'package:leadkart/helper/helper.dart';

class SelectedEditorImageView extends StatefulWidget {
   String imagePath;
  final double? width;
  final double? height;
  final String iconPath;
   SelectedEditorImageView({super.key, required this.imagePath, this.width=0, this.height=100, this.iconPath='assets/repic.svg'});

  @override
  State<SelectedEditorImageView> createState() => _SelectedEditorImageViewState();
}

class _SelectedEditorImageViewState extends State<SelectedEditorImageView> {
  final imageController = Controllers.imageEditorController;
  double? scale = 1.5;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return widget.imagePath.isNotEmpty? Transform.rotate(
      angle: angle,
      child: Transform.scale(
        scale: scale!,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
        widget.width==0? ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:
            Image.file(
                  File(widget.imagePath), height: widget.height,
            ),

        ):ClipRRect(
        borderRadius: BorderRadius.circular(10),
          child: Image.file(
                File(widget.imagePath), width: widget.width, height: widget.height,),
        ),
            TopPostionedButton(
              isShow: !imageController.isAdjustClicked.value,
              onTap: () {
                imageController.selectedImage.value='';
              },
              iconPath: widget.iconPath,
            ),BottomPostionedButton(
              isShow: !imageController.isAdjustClicked.value,
            onPanUpdate: (details) {
              setState(() {
                scale = scale! +( details.delta.dy / 10);
              });
            },
              onTap: () {
              },
              iconPath: 'assets/expand.svg',
            ),BottomLeftPostionedButton(
              isShow: !imageController.isAdjustClicked.value,
            onPanUpdate: (details) {
              setState(() {
                angle = angle -( details.delta.dy / 10);
              });
            },
              onTap: () {
              },
              iconPath: 'assets/scale.svg',
            )
          ],
        ),
      ),
    ):Container();
  }
}



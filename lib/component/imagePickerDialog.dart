import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/component/positionedButton.dart';
import 'package:leadkart/component/selectedImageView.dart';
import 'package:leadkart/helper/controllerInstances.dart';
import 'package:leadkart/helper/enums.dart';
import 'package:leadkart/helper/helper.dart';

class ImagePickerDialog extends StatefulWidget {
  const ImagePickerDialog({super.key});

  @override
  State<ImagePickerDialog> createState() => _ImagePickerDialogState();
}

class _ImagePickerDialogState extends State<ImagePickerDialog> {
  final imageController = Controllers.imageEditorController;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Text('Select Image'),
      content: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
                    () {
                  return imageController.image.value == ''
                      ? InkWell(
                    onTap: () {
                      imageController.pickImage();
                    },
                    child: DottedBorder(
                        radius: Radius.circular(10),
                        borderPadding: EdgeInsets.all(10),
                        borderType: BorderType.RRect,
                        color: MyHelper.appConstent.dottedBorderColor,
                        child: Container(
                            width: double.maxFinite,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/upload.png', width: 25),
                                  SizedBox(width: 10),
                                  Text('upload an Image',
                                      style: TextStyle(fontSize: 15)),
                                ],
                              ),
                            )


                        )),
                  ): SizedBox(
                    width: double.maxFinite, height: 150,
                    child: Center(
                      child:SelectedImageView(imagePath: imageController.image.value)
                    ),
                  );
                }
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    imageController.image.value = '';
                    context.pop();
                  },
                  child: Text('Cancel'),
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: Theme.of(context).primaryColor))),
                    fixedSize: MaterialStatePropertyAll<Size>(Size(100, 40)),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  imageController.selectedImage.value = imageController.image.value;
                  context.pop();
                }, child: Text('Submit')),
              ],
            )
          ],
        ),
      ),
    );
  }
}



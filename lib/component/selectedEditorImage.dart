import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leadkart/component/positionedButton.dart';
import 'package:leadkart/helper/controllerInstances.dart';

class SelectedEditorWidgetView extends StatefulWidget {
   Widget child;
   String widgetId;
   double? width;
   double? height;
  final String iconPath;
   SelectedEditorWidgetView({super.key, required this.child, this.width=0, this.height=100, required this.widgetId, this.iconPath='assets/repic.svg'});

  @override
  State<SelectedEditorWidgetView> createState() => _SelectedEditorWidgetViewState();
}

class _SelectedEditorWidgetViewState extends State<SelectedEditorWidgetView> {
  final imageController = Controllers.imageEditorController;
  @override
  Widget build(BuildContext context) {
    return widget.widgetId.isNotEmpty? AnimatedContainer(
      duration: Duration(milliseconds: 0),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
        minWidth: 100,
    minHeight: 100,
      ),
      color: Colors.grey,
      width: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale*250,
      height: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale*100,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
      widget.width==0? Transform.rotate(
angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
        child: Transform.scale(
          scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: widget.height,
                child: widget.child)
          ),
        ),
      ) :Transform.rotate(
angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
        child: Transform.scale(
          scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: widget.width,
              height: widget.height,
                child: widget.child)
          ),
        ),
      ),
          TopPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
            onTap: () {
              log('${widget.widgetId}');
              imageController.widgetList.removeWhere((element) => element.widgetId == widget.widgetId);
            },
            iconPath: widget.iconPath,
          ),BottomPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
          onPanUpdate: (details) {
            setState(() {
             // imageController.imageScale.value =imageController.imageScale.value +( details.delta.dy / 10);
              if(imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale+( details.delta.dy / 10)>0.1){
              double scale = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale;
              imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale = scale +( details.delta.dy / 10);
              }
            });
          },
            onTap: () {
            },
            iconPath: 'assets/expand.svg',
          ),BottomLeftPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
          onPanUpdate: (details) {
            setState(() {
              // imageController.imageRotation.value = imageController.imageRotation.value -( details.delta.dy / 10);
              double rotation = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation;
      imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation = rotation -( details.delta.dy * 0.02);
      imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation %= 2 * 3.141592653589793;
            });
          },
            onTap: () {
            },
            iconPath: 'assets/scale.svg',
          ),
        ],
      ),
    ):Container();
  }
}

class SelectEditorTextFieldView extends StatefulWidget {
  Widget child;

   String widgetId;
   double width;
   double height;
   String iconPath;
    SelectEditorTextFieldView({super.key, required this.child, required this.width, required this.height, required this.widgetId, this.iconPath='assets/repic.svg'});
  @override
  State<SelectEditorTextFieldView> createState() => _SelectEditorTextFieldViewState();
}

class _SelectEditorTextFieldViewState extends State<SelectEditorTextFieldView> {
  final imageController = Controllers.imageEditorController;
final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    RxBool isClicked= imageController.isTextFieldClicked;
    return widget.widgetId.isNotEmpty? AnimatedContainer(
      duration: Duration(milliseconds: 0),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
        minWidth: 100,
        minHeight: 100,
      ),
      color: Colors.grey,
      // width: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale*100,
      // height: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale*100,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
            child: Transform.scale(
              scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                      width: widget.width,
                      height: widget.height,
                      child: Expanded(
                        child: TextField(
                          controller: textController,
                          style: TextStyle(color: Colors.white, fontSize: 35),
                          decoration: InputDecoration(
                            hintText: 'Add to Heading',
                            hintStyle: TextStyle(color: Colors.white, fontSize: 35),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                )
                            ),
                          ),
                        ),
                      ))
              ),
            ),
          ),
          TopPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
            onTap: () {
              log('${widget.widgetId}');
              imageController.widgetList.removeWhere((element) => element.widgetId == widget.widgetId);
            },
            iconPath: widget.iconPath,
          ),BottomPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
            onPanUpdate: (details) {
              setState(() {
                // imageController.imageScale.value =imageController.imageScale.value +( details.delta.dy / 10);
                if(imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale+( details.delta.dy / 10)>0.1){
                  double scale = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale;
                  imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale = scale +( details.delta.dy / 10);
                }
              });
            },
            onTap: () {
            },
            iconPath: 'assets/expand.svg',
          ),BottomLeftPostionedButton(
            isShow: !imageController.isAdjustClicked.value,
            onPanUpdate: (details) {
              setState(() {
                // imageController.imageRotation.value = imageController.imageRotation.value -( details.delta.dy / 10);
                double rotation = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation;
                imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation = rotation -( details.delta.dy * 0.02);
                imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation %= 2 * 3.141592653589793;
              });
            },
            onTap: () {
            },
            iconPath: 'assets/scale.svg',
          ),
        ],
      ),
    ):Container();
  }
}

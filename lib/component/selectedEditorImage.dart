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
  final GlobalKey _widgetKey = GlobalKey();

  double _width = 0.0;
  double _height = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getWidgetSize();
    });
  }
  Size scaledSize = Size(0, 0);
  void _getWidgetSize() {
    final renderBox = _widgetKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final size = renderBox.size;
      setState(() {
        _width = size.width;
        _height = size.height;
        log('width: $_width, height: $_height');
        final scale = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale;
        scaledSize = widget.widgetId.isNotEmpty? Size(size.width * scale, size.height * scale):Size(0, 0);
        print("Scaled size of the image: $scaledSize");
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return widget.widgetId.isNotEmpty? AnimatedContainer(
      duration: Duration(milliseconds: 0),
      constraints: BoxConstraints(
        // maxWidth: MediaQuery.of(context).size.width,
        // maxHeight: MediaQuery.of(context).size.width,
        minWidth: 100,
    minHeight: 100,
      ),
      // color: Colors.grey,
      width: _width*imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
      height: _height*imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.width==0?  Container(

            key: _widgetKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Transform.rotate(
                angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
                child: Transform.scale(
                  scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
                  alignment: Alignment.center,
                  child: widget.child,
                ),
              ),
            ),
          ): Container(
            width: widget.width,
            height: widget.height,
            key: _widgetKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Transform.rotate(
                angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
                child: Transform.scale(
                  scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
                  alignment: Alignment.center,
                  child: widget.child,
                ),
              ),
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
              imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale = scale +( details.delta.dy / 100);
              }
WidgetsBinding.instance.addPostFrameCallback((_) {
                _getWidgetSize();
              });
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

class SelectedEditorTextView extends StatefulWidget {
  final Widget child;
  final String widgetId;
  final double width;
  final double height;
  final String iconPath;

  SelectedEditorTextView({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    required this.widgetId,
    this.iconPath = 'assets/repic.svg',
  });

  @override
  State<SelectedEditorTextView> createState() => _SelectedEditorTextViewState();
}

class _SelectedEditorTextViewState extends State<SelectedEditorTextView> {
  final imageController = Controllers.imageEditorController;
  final textController = TextEditingController();
  final GlobalKey _widgetKey = GlobalKey();

  double _width = 0.0;
  double _height = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getWidgetSize();
    });
  }
Size scaledSize = Size(0, 0);
  void _getWidgetSize() {
    final renderBox = _widgetKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final size = renderBox.size;
      setState(() {
        _width = size.width;
        _height = size.height;
        log('width: $_width, height: $_height');
        final scale = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale;
        scaledSize = Size(size.width * scale, size.height * scale);
        print("Scaled size of the container: $scaledSize");
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    RxBool isClicked = imageController.isTextFieldClicked;
    return widget.widgetId.isNotEmpty
        ? AnimatedContainer(
      duration: Duration(milliseconds: 0),
      constraints: BoxConstraints(
        // maxWidth: MediaQuery.of(context).size.width,
        // maxHeight: MediaQuery.of(context).size.width,
        minWidth: 100,
        minHeight: 100,
      ),
      // decoration: BoxDecoration(
      //   // borderRadius: BorderRadius.circular(10),
      //   // color: Colors.white.withOpacity(0.5),
      //   border: Border.all(color: Color.fromRGBO(109, 57, 255, 1
      //   ), width: 2),
      // ),
      width: _width*imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
      height: _height*imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10),
            // color: Colors.white.withOpacity(0.5),
            border: Border.all(color: Color.fromRGBO(109, 57, 255, 1
            ), width: 2),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(

                key: _widgetKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: Transform.rotate(
                    angle: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation,
                    child: Transform.scale(
                      scale: imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale,
                      alignment: Alignment.center,
                      child: widget.child,
                    ),
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
              ),
              BottomPostionedButton(
                isShow: !imageController.isAdjustClicked.value,
                onPanUpdate: (details) {
                  setState(() {
                    if (imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale + (details.delta.dy / 10) > 0.1) {
                      double scale = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale;
                      imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).scale = scale + (details.delta.dy / 10);
                    }
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _getWidgetSize();
                    });
                  });

                },
                onTap: () {},
                iconPath: 'assets/expand.svg',
              ),
              BottomLeftPostionedButton(
                isShow: !imageController.isAdjustClicked.value,
                onPanUpdate: (details) {
                  setState(() {
                    double rotation = imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation;
                    imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation = rotation - (details.delta.dy * 0.02);
                    imageController.widgetList.singleWhere((element) => element.widgetId == widget.widgetId).rotation %= 2 * 3.141592653589793;
                  });
                },
                onTap: () {},
                iconPath: 'assets/scale.svg',
              ),
            ],
          ),
        ),
      ),
    )
        : Container();
  }
}

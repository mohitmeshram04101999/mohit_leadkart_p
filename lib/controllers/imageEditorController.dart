import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:leadkart/screens/imageEditor/imageEditor.dart';

class ImageEditorController extends GetxController {
  final undo = false.obs;
  final redo = false.obs;


  final image = ''.obs;
  final selectedImage = ''.obs;
  pickImage()async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type:FileType.image
    );
    if(result != null){
      image.value = result.files.single.path!;
    }
  }
  final imageOffset = Offset.zero.obs;
final isAdjustClicked = false.obs;
  final imageBrightness = 0.0.obs;
  final imageContrast = 0.0.obs;
  final imageSaturation = 0.0.obs;
  final imageSharpness = 0.0.obs;
  final imageHue = 0.0.obs;
}
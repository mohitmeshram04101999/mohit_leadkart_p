import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:leadkart/helper/helper.dart';

class ImageEditor extends StatefulWidget {
  const ImageEditor({super.key});

  @override
  State<ImageEditor> createState() => _ImageEditorState();
}

class _ImageEditorState extends State<ImageEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select frame'),
        foregroundColor: Colors.white,
        actions: [
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.resolveWith((states) => Size(100, 20)),
              backgroundColor: MaterialStateProperty.resolveWith((states) => Theme.of(context).primaryColor),
              side: MaterialStateProperty.resolveWith((states) => BorderSide(color: Colors.white)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Next', style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
BottomChips(text: 'Frame', onTap: (){}),
BottomChips(text: 'Text', onTap: (){}),
BottomChips(text: 'Image', onTap: (){
  showDialog(context: context, builder: (context) => ImageDialog());
}),
BottomChips(text: 'Adjust', onTap: (){}),
BottomChips(text: 'Business', onTap: (){}),
BottomChips(text: 'Sticker', onTap: (){}),
          ],
        )
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.share, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.download, color: Colors.black),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/home_images/img.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/undo.png', width: 25),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/redo.png', width: 25),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomChips extends StatefulWidget {
  final String text;
  final String? icon;
   Function()? onTap;
   BottomChips({super.key, required this.text, this.icon, this.onTap});

  @override
  State<BottomChips> createState() => _BottomChipsState();
}

class _BottomChipsState extends State<BottomChips> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ActionChip(label: Row(
        children: [
          Icon(Icons.filter_frames_outlined),
          SizedBox(width:5),
          Text(widget.text),
        ],
      ), backgroundColor: MyHelper.appConstent.leadsBannerColor, shape: StadiumBorder(

      ), onPressed: widget.onTap),
    );
  }
}

class ImageDialog extends StatefulWidget {
  const ImageDialog({super.key});

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Image'),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DottedBorder(
              strokeCap: StrokeCap.butt,
              radius: Radius.circular(10),
              child: Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Theme.of(context).primaryColor),
                    SizedBox(width: 10),
                    Text('upload an Image', style: TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                )
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: (){}, child: Text('Cancel'), style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: Theme.of(context).primaryColor))),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(100, 40)),
                ),),
                ElevatedButton(onPressed: (){}, child: Text('Submit')),
              ],
            )
          ],
        ),
      ),
    );
  }
}



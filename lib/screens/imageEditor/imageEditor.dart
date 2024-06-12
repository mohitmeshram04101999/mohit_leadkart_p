import 'package:flutter/material.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.crop, color: Colors.black,),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.rotate_left, color: Colors.black,),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.flip, color: Colors.black,),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter, color: Colors.black,),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.text_fields, color: Colors.black,),
            ),
          ],
        ),
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

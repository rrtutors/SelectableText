import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: CopyableText(),
    );
  }
}

class CopyableText extends StatelessWidget{
  GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("Text Widget vs SelectableText Widget"),),
      body: Container(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[

            Expanded(child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.pink,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SelectableText("SelectableText Widget and Its Properties",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                      ),
                    ),
                    Container(width:double.infinity,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText("SelectableText Widget Copy option",
                            style: TextStyle(fontSize: 16,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(
                      width:double.infinity,
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SelectableText("SelectableText Direction property",style: TextStyle(fontSize: 16,color: Colors.white),
                         textDirection:  TextDirection.rtl,),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,
                        color: Colors.grey,
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SelectableText("SelectableText Widget have Tap event, click to hadle event ",
                        style: TextStyle(fontSize: 16,color: Colors.white),
                        textAlign: TextAlign.center,
                        onTap: (){
                        _scaffoldKey.currentState.showSnackBar(SnackBar(backgroundColor:Colors.deepPurple,content: SelectableText.rich(TextSpan(text: "OnTap event for the SelectableText widget"))));
                      },),
                    )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText("SelectableText Widget Show Cursor option and cursor styles ",
                            style: TextStyle(fontSize: 16,color: Colors.white),
                            textAlign: TextAlign.center,showCursor: true,cursorColor: Colors.pink,autofocus: true,
                            ),
                        )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SelectableText.rich(TextSpan(
                            text: "SelectableText with different styles ",
                              children: [
                                TextSpan(text: " Style one", style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white)),
                                TextSpan(text: " Style two", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink)),

                              ])),

                            ),
                        ),
                  ],
                ),
              ),
            ),),



            Expanded(child: SingleChildScrollView(
              child: Container(
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.pink,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Text Widget and Its Properties",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                      ),
                    ),
                    Container(width:double.infinity,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Text Widget don't have option of Copy text",style: TextStyle(fontSize: 16,color: Colors.white),textAlign: TextAlign.center,),
                    )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Text Widget Direction Property",style: TextStyle(fontSize: 16,color: Colors.white),textDirection: TextDirection.rtl,),
                    )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Text Widget Don't have Tap event",style: TextStyle(fontSize: 16,color: Colors.white),textAlign: TextAlign.center,),
                    )),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("No Cursor visibility",style: TextStyle(fontSize: 16,color: Colors.white),textAlign: TextAlign.center,),
                    )),Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                    Container(width:double.infinity,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(

                        TextSpan(
                          text: 'Text Widget with different styles', // default text style
                          children: <TextSpan>[
                            TextSpan(text: " Style one", style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white)),
                            TextSpan(text: " Style two", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink)),
                          ],
                        ),
                      )
                    )),
                  ],
                ),
              ),
            ),),
          ],

        ),
      ),
    );
  }

}



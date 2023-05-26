import 'dart:math' as math;

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  final Future<void> Function(BuildContext)? onInit;
  final Widget Function(BuildContext)? onLoaded;
  const Loading({Key? key, this.onInit, this.onLoaded}) : super(key: key);

  @override
  State createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    ()async{
      await widget.onInit!(context);
      setState(() {
        isLoaded = true;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return isLoaded
        ? widget.onLoaded!(context)
        : MaterialApp(
            home: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    Container(color: Colors.black,
                      height: constraints.maxHeight,
                      padding: EdgeInsets.fromLTRB(0,0,0, constraints.maxHeight/6),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/logo_transparent.png", width: constraints.maxWidth*3/4,),
                            SizedBox(height: 40,),
                            Image(
                              image: AssetImage('assets/images/starlinkforukraine.png'),
                              width: 130,
                            )
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 30,
                      left:20,
//                      left: (constraints.maxWidth-10)/2,
                      child: SizedBox(
                        width: math.max(constraints.maxWidth-40,1),
                        height: 8,
                        child: LinearProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          minHeight: 10,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
        );
  }


}
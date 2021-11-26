import 'package:flutter/material.dart';





class BarcodePage extends StatefulWidget {
  @override
  _BarcodePageState createState() => _BarcodePageState();
}


class _BarcodePageState extends State<BarcodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
            
        ),
        body: Container(
          alignment: Alignment.center,
          child: Center(
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: Image.asset("assets/viding-logo.png", fit: BoxFit.cover),
                      contentPadding: const EdgeInsets.only(top: 50),
                    ),
                  ], 
                ),

              ),
            ),
          ) 
        
      );
  }
}



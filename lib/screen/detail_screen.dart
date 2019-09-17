

import 'package:flutter/material.dart';
import 'package:olahraga/dummy_data.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final id = ModalRoute.of(context).settings.arguments as String;

    final selectedOlga = OLGA_DUMMY_DATA.firstWhere((olga) => olga.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Olahraga'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    selectedOlga.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 15,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          selectedOlga.title,
                          style: TextStyle(fontSize: 26, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )
                      
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),

            Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(selectedOlga.description),
              ),
            )
          ],
        ),
        ),
      
    );
  }
}
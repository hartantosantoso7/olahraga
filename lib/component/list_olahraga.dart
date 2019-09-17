

import 'package:flutter/material.dart';
import 'package:olahraga/screen/detail_screen.dart';

class ListOlahraga extends StatelessWidget {

  final String id;
  final String title;
  final String description;
  final String imageUrl;

  ListOlahraga(this.id, this.title, this.description, this.imageUrl);

  void goToDetail(BuildContext context) {
    Navigator.of(context).pushNamed('/detail', arguments:id );
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) => DetailScreen(id: id, title: title, description: description)
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToDetail(context),
      highlightColor: Colors.white.withAlpha(30),
      splashColor: Colors.white.withAlpha(20),
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  imageUrl,
                  height: 65,
                  width: double.infinity,
                ),
                ),
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: Text(title, style: Theme.of(context).textTheme.title)),
          
            ],
          ),
        ),
      ),
      
    );
  }
}
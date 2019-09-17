

import 'package:flutter/material.dart';
import 'package:olahraga/dummy_data.dart';
import 'package:olahraga/component/list_olahraga.dart';

class Olahraga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olahraga'),
      ),

      body: GridView(
        padding: EdgeInsets.all(15),

        children: OLGA_DUMMY_DATA
        .map((olga) => ListOlahraga(olga.id, olga.title, olga.description, olga.image)).toList(),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
      
    );
  }
}
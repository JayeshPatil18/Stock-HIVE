import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dialgo_boxs/conSelectStocks.dart';

class StockSelector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Contest',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ContestStocks(),
      );
  }
}
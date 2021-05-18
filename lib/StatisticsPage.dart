import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {

  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

  Icon _trailing =
  Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xffdbdbdb));
  Color _color = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            border: null,
            //backgroundColor: Color(0x125E5D5D),
            brightness: Brightness.light,
            trailing: IconButton(
              //onPressed: ,
              icon: Container(
                margin: EdgeInsets.only(top: 0),
                child: Icon(
                  CupertinoIcons.ellipsis_circle,
                  color: Color.fromRGBO(0, 122, 255, 1.0),
                  size: 24,
                ),
              ),
            ),
            largeTitle: Text("Statistics",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff040406),
                    letterSpacing: 0.1)),
          ),
          SliverPadding(padding: EdgeInsets.only(top: 20)),

          SliverPadding(padding: EdgeInsets.only(top: 125))
        ],
      )
    );
  }
}
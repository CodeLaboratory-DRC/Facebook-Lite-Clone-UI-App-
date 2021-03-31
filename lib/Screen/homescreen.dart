import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: _height,
          width: _width,
          child: Column(
            children: [
              _blackHeader(_height),
              _whiteHeader(_height),
            ],
          )),
    );
  }

  Widget _blackHeader(double _height) {
    return Container(
      height: _height * 0.13,
      color: Colors.black,
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                child: Text("Mode Payant ",
                    style: TextStyle(
                        color: Colors.white70,
                        fontStyle: FontStyle.normal,
                        fontSize: ScreenUtil().setSp(25))),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 5.0),
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.grey,
                    child: Text(
                      "?",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 8.0),
                child: Container(
                  width: 100.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                      boxShadow: [BoxShadow(color: Colors.black)]),
                  child: Center(child: Text("Passer en mode gratuit")),
                )),
          )
        ],
      ),
    );
  }

  Widget _whiteHeader(double _height) {
    return Container(
      height: _height*0.20,
    );
  }
}

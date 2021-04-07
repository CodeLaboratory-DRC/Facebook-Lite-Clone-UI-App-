import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emoji = EmojiParser();
  int likePub = 0;
  bool afterLike = false;
  bool onComment = false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Divider(
        color: Colors.grey[400],
        height: 10,
      ),
      _bodyHeader(),
      _bodySndHeader(),
      Divider(
        color: Colors.grey[400],
        height: 10,
        thickness: 10,
      ),
      _bodySalonPics(),
      Divider(
        color: Colors.grey[200],
        height: 10,
        thickness: 10,
      ),
      _bodyStories(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyPubs(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyPubs(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyGroupes(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyPubs(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyStories(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      _bodyPubs(),
      Divider(
        color: Colors.grey[300],
        height: 10,
        thickness: 10,
      ),
      SizedBox(
        height: 50.0,
      ),
      Center(
        child: CircularProgressIndicator(),
      ),
      SizedBox(
        height: 50.0,
      ),
    ]);
  }

  Widget _bodyGroupes() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Groupes suggérés",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 420,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        _groupes(),
                        SizedBox(
                          width: 10.0,
                        ),
                        _groupes(),
                        SizedBox(
                          width: 10.0,
                        ),
                        _groupes(),
                        SizedBox(
                          width: 10.0,
                        ),
                        _groupes(),
                      ]),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Découvrir plus de groupes",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 17.0)),
                SizedBox(
                  width: 1.0,
                ),
                Icon(Icons.arrow_forward_ios_outlined, size: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _groupes() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/FbPic.jpg"),
                  fit: BoxFit.cover),
              border: Border.all(color: Colors.grey[200]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
          ),
          Flexible(
            child: Container(
              height: 170,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 1.0, left: 10.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Passionnés de\nla Programmation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    Row(
                      children: [
                        Text(
                          "61k membres",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 5.0,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "200 publications",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundImage:
                                AssetImage("assets/images/FbPic.jpg"),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Text(
                              "Parce que vous avez consulté Staff des Programmeurs",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey,
                                  fontSize: 12.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 45.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Center(
                          child: Text("Rejoindre",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold)))),
                  Container(
                      height: 45.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Center(
                          child: Text("Apreçu",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold)))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyPubs() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Célestin Djumah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(25))),
                            ],
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("15h",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey)),
                              SizedBox(
                                width: 4.0,
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 5.0,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Icon(
                                Icons.public_outlined,
                                size: 20.0,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                emoji.emojify(
                  ":smiley: :smiley: :smiley: Ceci est un Clone de l'Ui de l'application mobile Facebook Lite ...\nNous espérons qu'il vous plaira :heart::heart::heart:",
                ),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(22)),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                "assets/images/FbPic.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(emoji.emojify(":smile::heart:")),
                        CircleAvatar(
                            radius: 10.0,
                            child: Icon(
                              Icons.thumb_up,
                              size: 13.0,
                            )),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "3,2K",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (likePub == 0) {
                                likePub++;
                                afterLike = true;
                              } else {
                                likePub--;
                                afterLike = false;
                              }
                            });
                          },
                          child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: afterLike
                                      ? Colors.blue[300]
                                      : Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      // offset: Offset(1, 1),
                                      // spreadRadius: 1,
                                      // blurRadius: 3,
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 23.0,
                                    color: afterLike
                                        ? Colors.black
                                        : Colors.grey[600],
                                  ),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text(
                                    likePub.toString(),
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: afterLike
                                          ? Colors.black
                                          : Colors.grey[600],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              onComment = true;
                            });
                          },
                          child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      // offset: Offset(1, 1),
                                      // spreadRadius: 1,
                                      // blurRadius: 3,
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.comment_bank_outlined,
                                    size: 23.0,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text(
                                    75.toString(),
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    // offset: Offset(1, 1),
                                    // spreadRadius: 1,
                                    // blurRadius: 3,
                                  )
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.reply_outlined,
                                  textDirection: TextDirection.rtl,
                                  size: 23.0,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  351.toString(),
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    onComment
                        ? Row(
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage("assets/images/FbPic.jpg"),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Flexible(
                                child: Container(
                                  height: 50.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Ecrivez un message ...",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _bodyStories() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 180.0,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 115.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                        ),
                        CircleAvatar(
                          radius: 15.0,
                          child: Icon(Icons.add_circle_outline),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Créer un story",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("3",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("4",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Badge(
                    badgeColor: Colors.blue,
                    badgeContent: Text("6",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    shape: BadgeShape.square,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition(top: 10.0, end: 10.0),
                    child: Container(
                      width: 115.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/FbPic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Célestin \nDjumah",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodySalonPics() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 3,
                              )
                            ]),
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.deepPurple[600],
                            ),
                            Flexible(
                              child: Text(
                                "Créer un salon",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget _bodyHeader() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage("assets/images/FbPic.jpg"),
            ),
            SizedBox(
              width: 20.0,
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "A quoi pensez vous ?", border: InputBorder.none
                    // filled: true,
                    ),
              ),
            ),
            VerticalDivider(),
            Column(
              children: [
                Icon(
                  Icons.photo_size_select_actual_outlined,
                  color: Colors.grey,
                ),
                Text("Photo",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
      ),
      Divider(
        color: Colors.grey[400],
        height: 10,
      ),
    ],
  );
}

Widget _bodySndHeader() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Icon(
              Icons.menu_book_rounded,
              size: 22.0,
              color: Colors.blue,
            ),
            Text(
              "Texte",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.video_call,
              size: 22.0,
              color: Colors.red,
            ),
            Text(
              "Vidéo en",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.video_call,
              size: 22.0,
              color: Colors.purple,
            ),
            Text(
              "Salon",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}

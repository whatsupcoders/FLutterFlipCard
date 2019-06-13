import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_card/flip_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      "images/image2.jpg")
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 400.0,
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: Material(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3).withOpacity(0.2),
                            child: _nameDetailsContainer(),
                          ),
                          back: Material(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: _socialContainer(),
                          ),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),

          )
        ],),
    );
  }

  Widget _nameDetailsContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 130.0,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ListTile(
                  leading: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.unsplash.com/photo-1510025987945-cf4ee9606b1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                          )
                      )
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text('Meghan Visser', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('Android Developer', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              ),
            ],),
            decoration: BoxDecoration(
              color: Color(0xffff520d).withOpacity(0.9),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _detailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _socialContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 130.0,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ListTile(
                  leading: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.unsplash.com/photo-1510025987945-cf4ee9606b1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                          )
                      )
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text('Social Links', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              ),
            ],),
            decoration: BoxDecoration(
              color: Color(0xffff0d41).withOpacity(0.9),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _socialdetailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _detailsContainer() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Text(
            'A forward-thinking developer offering more than four years of experience building, integrating, testing, and supporting Android applications for mobile and tablet devices on the Android platform seeks position with a top technology firm.',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                      FontAwesomeIcons.mapMarkerAlt, color: Color(0xffff520d))),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(child: Text('NewYork', style: TextStyle(
                      color: Color(0xffff520d),
                      fontSize: 20.0,
                    ),),),
                  ),
                ],)
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                      FontAwesomeIcons.envelope, color: Color(0xffff520d))),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: Text('meghanv@gmail.com', style: TextStyle(
                        color: Color(0xffff520d),
                        fontSize: 20.0,
                      ),),),
                  ),
                ],)
          ),
        ),
      ],);
  }


  Widget _socialdetailsContainer() {
    return Column(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.twitter, color: Color(0xffff0d41),
                    size: 30.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: Text('/meghanv', style: TextStyle(
                        color: Color(0xffff0d41),
                        fontSize: 24.0,
                      ),),),
                  ),
                ],)
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.github, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanvisser', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,),),),
                ),
              ],)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.linkedin, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanviss', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,
                    ),),),
                ),
              ],)
          ),),

        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.facebook, color: Color(0xffff0d41),
                  size: 30.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanvisser', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,
                    ),),),
                ),
              ],)
          ),),

      ],);
  }
}
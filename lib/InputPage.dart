import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Constant.dart';
import 'Widgets.dart';

enum Gender { Male, Female }
Gender gender;
int Height = 180;
int Weight = 50;
int Age = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Card_bmi(
                  Onpressed: () {
                    setState(() {
                      gender = Gender.Male;
                    });
                  },
                  Card_color:
                      gender == Gender.Male ? kActiveColor : kInactiveColor,
                  Card_child: Card_detail(
                    Lable: "MALE",
                    iconname: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: Card_bmi(
                  Onpressed: () {
                    setState(() {
                      gender = Gender.Female;
                    });
                  },
                  Card_child: Card_detail(
                      Lable: "FEMALE", iconname: FontAwesomeIcons.venus),
                  Card_color:
                      gender == Gender.Female ? kActiveColor : kInactiveColor,
                ))
              ],
            ),
          ),
          Expanded(
              child: Card_bmi(
            Card_child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      Height.toString(),
                      style: kNumberstyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: kPinkishcolor,
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                      min: 100,
                      max: 250,
                      value: Height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          Height = value.round();
                        });
                      }),
                )
              ],
            ),
            Card_color: Color(0xFF1d1e33),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Card_bmi(
                  Card_child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
                      ),
                      Text(
                        Weight.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                Weight++;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6.0,
                            fillColor: Color(0xFFEB1555),
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                Weight--;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6.0,
                            fillColor: Color(0xFFEB1555),
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          )
                        ],
                      )
                    ],
                  ),
                  Card_color: Color(0xFF1d1e33),
                )),
                Expanded(
                    child: Card_bmi(
                  Card_child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabelStyle,
                      ),
                      Text(
                        Age.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                Age++;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6.0,
                            fillColor: Color(0xFFEB1555),
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                Age--;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6.0,
                            fillColor: Color(0xFFEB1555),
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          )
                        ],
                      )
                    ],
                  ),
                  Card_color: Color(0xFF1d1e33),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
              color: Color(0xFFEB1555),
            ),
          )
        ],
      ),
    );
  }
}

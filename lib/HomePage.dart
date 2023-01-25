import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_screens/acc_gender_option.dart';
import 'package:your_healthcalculators/components/home_round_icon_button.dart';
import 'package:your_healthcalculators/input_screens/acc_gender_option.dart';
import 'input_screens/bmi_input_page.dart';
import 'input_screens/bmr_input_page.dart';
import 'input_screens/bfc_gender_option.dart';
import 'package:your_healthcalculators/input_screens/bird_info_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.solidHeart,
                            size: 20.0,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Your Health',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Calculators',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 45.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(top: 80.0, left: 25.0, right: 20.0),
              children: <Widget>[
                ListTile(
                  title: Text(
                    'BMI',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Body Mass Index',
                  ),
                  trailing: RoundIconButton(
                    icon: Icons.trip_origin,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputPage()));
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    'BMR',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Basal Metabolic Rate'),
                  trailing: RoundIconButton(
                    icon: Icons.trip_origin,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmrInputPage()));
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    'BFC',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      'US Navy Body Fat Calculator \nHigher accuracy then standard calculators'),
                  trailing: RoundIconButton(
                    icon: Icons.trip_origin,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BfcGenderSelect()));
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    'ACC',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Active Calorie Calculator'),
                  trailing: RoundIconButton(
                    icon: Icons.trip_origin,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccGenderSelect()));
                    },
                  ),
                ),
                SizedBox(height: 40.0),
                Column(
                  children: <Widget>[
                    IconButton(
                      iconSize: 55.0,
                      icon: Icon(FontAwesomeIcons.themeisle),
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BirdInfo()));
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('Click on Binfo for more Insights'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyWeatherScreen extends StatelessWidget {
  const DailyWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            getBottomScreen(),
            getTopScreen(context),
          ],
        ),
      ),
    );
  }

  Container getBottomScreen() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFF020F2C),
      child: Column(
        children: [
          SizedBox(
            height: 330,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Mon',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/8.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cloudy',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+20',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +16',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Tue',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/9.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Windy',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+21',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +17',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Wed',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/6.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sunny',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+24',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +19',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Thu',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/2.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Rainy',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+21',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +15',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Fri',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/2.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Rainy',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+20',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +14',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Sat',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/6.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sunny',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+22',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +16',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Sun',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/7.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cloudy',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+20',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +15',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Text(
                    'Mon',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xFFB6B6B6),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/6.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sunny',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Color(0xFFB6B6B6),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+22',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' +16',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '°',
                        style: TextStyle(
                          color: Color(0xFFB6B6B6),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container getTopScreen(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Color(0xff1267f5),
          Color(0xff12b3fb),
          ], 
          begin: Alignment.bottomLeft, 
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '7 Days',
                  style: TextStyle(
                    fontFamily: 'GEB',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/1.png',
                  height: 150,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tommorow',
                      style: TextStyle(
                        fontFamily: 'GM',
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          '20',
                          style: TextStyle(
                            height: 0.5,
                            fontFamily: 'GB',
                            color: Colors.white,
                            fontSize: 70,
                          ),
                        ),
                        Text(
                          '°',
                          style: TextStyle(
                            height: 0.5,
                            color: Colors.white,
                            fontSize: 60,
                          ),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Text(
                          '/18',
                          style: TextStyle(
                            height: 0.5,
                            fontFamily: 'GEB',
                            color: Color(0xFFE5E4E4),
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          '°',
                          style: TextStyle(
                            height: 0.5,
                            color: Color(0xFFE5E4E4),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80,
                width: 60,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.wind,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3 Km/h',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'GB'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Wind',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GM',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 60,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.droplet,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '89 %',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'GB'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Humidity',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GM',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 60,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.water,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1 mm',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'GB'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rain',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GM',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
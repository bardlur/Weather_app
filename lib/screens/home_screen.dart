import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';
import 'package:weather_app/screens/daily_weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget getWeatherIcon(int code) {
    switch (code) {
      case >200 && <= 300 :
        return Image.asset(
          'assets/images/1.png',
          height: 280,
        );
      case >= 300 && < 400 :
        return Image.asset(
          'assets/images/2.png',
          height: 280,
        );
      case >= 500 && < 600 : 
       return Image.asset(
          'assets/images/3.png',
          height: 280,
        );
      case >= 600 && < 700 : 
        return Image.asset(
          'assets/images/4.png',
          height: 280,
        );  
      case >= 700 && < 800 :
        return Image.asset(
          'assets/images/5.png',
          height: 280,
        );
      case == 800 :
        return Image.asset(
          'assets/images/6.png',
          height: 280,
        );
      case > 800 && <= 804 :
        return Image.asset(
          'assets/images/7.png',
          height: 280,
        );
      default:
      return Image.asset(
        'assets/images/7.png',
        height: 280,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
          builder: (context, state) {
            if(state is WeatherBlocSuccess) {
              return Stack(
                children: [
                  getTopScreen(context),
                  getBottomScreen(state),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Container getBottomScreen(WeatherBlocSuccess state) {
    return Container(
      height: 590,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff1267f5),
          Color(0xff12b3fb),
          // Color(0xff12b3fb)
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60)),
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
                FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                '${state.weather.areaName}',
                                style: TextStyle(
                                  fontFamily: 'GEB',
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        DateFormat('EEEE dd ').add_jm().format(state.weather.date!),
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: getWeatherIcon(state.weather.weatherConditionCode!)
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${state.weather.temperature!.celsius!.round()}',
                style: TextStyle(
                  height: 0.5,
                  fontFamily: 'GB',
                  color: Colors.white,
                  fontSize: 100,
                ),
              ),
              Text(
                '°',
                style: TextStyle(
                  height: 0.5,
                  color: Colors.white,
                  fontSize: 80,
                ),
              ),
            ],
          ),
          Text(
            state.weather.weatherMain!.toUpperCase(),
            style: TextStyle(
              fontFamily: 'GB',
              color: Colors.white,
              fontSize: 20,
            ),
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
                      state.weather.windSpeed!.toStringAsFixed(0) + ' Km/h',
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
                        // fontWeight: FontWeight.bold,
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
                      state.weather.humidity!.toStringAsFixed(0) + ' %',
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
                      state.weather.rainLastHour!.toStringAsFixed(0) + ' mm',
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

  Container getTopScreen(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFF020F2C),
      child: Column(
        children: [
          SizedBox(
            height: 600,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DailyWeatherScreen(),
                      )
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        '7 Days',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Color(0xFFC7C6C6),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Color(0xFFC7C6C6),
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF01134D),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '23',
                              style: TextStyle(
                                height: 0.5,
                                fontFamily: 'GB',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '°',
                              style: TextStyle(
                                height: 0.5,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/5.png',
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '10:00',
                          style: TextStyle(
                            fontFamily: 'GB',
                            height: 0.5,
                            color: Color(0xFFABA9A9),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xFF01134D),
                        borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              '24',
                              style: TextStyle(
                                height: 0.5,
                                fontFamily: 'GB',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '°',
                              style: TextStyle(
                                height: 0.5,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/7.png',
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '12:00',
                          style: TextStyle(
                            fontFamily: 'GB',
                            height: 0.5,
                            color: Color(0xFFABA9A9),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xFF01134D),
                        borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              '26',
                              style: TextStyle(
                                height: 0.5,
                                fontFamily: 'GB',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '°',
                              style: TextStyle(
                                height: 0.5,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/2.png',
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '14:00',
                          style: TextStyle(
                            fontFamily: 'GB',
                            height: 0.5,
                            color: Color(0xFFABA9A9),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xFF01134D),
                        borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              '24',
                              style: TextStyle(
                                height: 0.5,
                                fontFamily: 'GB',
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '°',
                              style: TextStyle(
                                height: 0.5,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/2.png',
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '16:00',
                          style: TextStyle(
                            fontFamily: 'GB',
                            height: 0.5,
                            color: Color(0xFFABA9A9),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

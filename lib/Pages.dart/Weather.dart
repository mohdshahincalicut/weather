import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:weather/Components/MapLocale.dart';
import 'package:weather/Container/AirQuality.dart';
import 'package:weather/Components/Container.dart';
import 'package:weather/Container/Current.dart';
import 'package:weather/Container/WeatherDetails.dart';
import 'package:weather/Container/WeatherForeCast.dart';

class Weather extends StatefulWidget {
  Weather({super.key, required this.data});
  final data;
  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  final FlutterLocalization localization = FlutterLocalization.instance;
  @override
  void initState() {
     localization.init(mapLocales:LACALES,initLanguageCode: 'en',);
  localization.onTranslatedLanguage = _onTranslatedLanguage;
    super.initState();
    print(widget.data);
  }
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(end: Alignment.topCenter, colors: [
          Colors.blueGrey[900]!,
          Colors.blueGrey[800]!,
          Colors.blueGrey[900]!,
        ])),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (countext, index) {
              return Column(
                children: [
                 const SizedBox(
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Container(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.pink],
                              ).createShader(bounds);
                            },
                            child:const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Text(
                              widget.data['location']["name"],
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.50),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                            widget.data['timelines']["minutely"][1]["values"]
                                    ["temperature"]
                                .toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Temperature",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white.withOpacity(0.50)))),
                      ],
                    ),
                  ),
                const  ContainerPage(
                    width: 200,
                    height: 20,
                    hearderText: 'Temperature Apparent',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CurrentContainer(
                    icones: Icons.device_thermostat_outlined,
                    iconcolor: Colors.white24,
                    weatherdata: widget.data['timelines']["minutely"][1]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    weatherdata1: widget.data['timelines']["minutely"][10]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    weatherdata2: widget.data['timelines']["minutely"][20]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    weatherdata3: widget.data['timelines']["minutely"][30]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    weatherdata4: widget.data['timelines']["minutely"][50]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    weatherdata5: widget.data['timelines']["minutely"][59]
                            ["values"]["temperatureApparent"]
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContainerPage(
                    width: 200,
                    height: 20,
                    hearderText: '5-Days Weather Forecast',
                  ),
                  WeatherForeCast(
                    forecastdays: 'Today       ',
                    clouddata: widget.data['timelines']["minutely"][1]["values"]
                            ["humidity"]
                        .toString(),
                    icones: Icons.wb_sunny_outlined,
                    forecastdays1: 'Tomorrow',
                    forecastdays2: '1 day ago ',
                    forecastdays3: '2 day ago ',
                    forecastdays4: '3 day ago ',
                    forecastdays5: '5 day ago ',
                    iconcolor: Colors.amber,
                    cloudstatus: 'Partiy Clo..',
                    clouddata1: widget.data['timelines']["minutely"][1]
                            ["values"]["humidity"]
                        .toString(),
                    clouddata2: widget.data['timelines']["minutely"][10]
                            ["values"]["humidity"]
                        .toString(),
                    clouddata3: widget.data['timelines']["minutely"][30]
                            ["values"]["humidity"]
                        .toString(),
                    clouddata4: widget.data['timelines']["minutely"][40]
                            ["values"]["humidity"]
                        .toString(),
                    clouddata5: widget.data['timelines']["minutely"][50]
                            ["values"]["humidity"]
                        .toString(),
                  ),
                  AirQulity(
                    airQulity: widget.data['timelines']["minutely"][50]
                            ["values"]["windGust"]
                        .toString(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                const  ContainerPage(
                    width: 200,
                    height: 20,
                    hearderText: 'Weather Details',
                  ),
                  WeatherDetails(
                    icons: Icons.device_thermostat_outlined,
                    gradientColor: [Colors.white,Colors.white,Colors.red, Colors.blue],
                    iconColor: Colors.white,
                    weatherName: 'Feel like',
                    weatherData:widget.data['timelines']["minutely"][1]
                            ["values"]["temperatureApparent"]
                        .toString(),
                    icons1: Icons.air,
                    gradientColor1: [Colors.red,Colors.blue],
                    iconColor1: Colors.red,
                    weatherName1: 'NE wind',
                    weatherData1: widget.data['timelines']["minutely"][1]
                            ["values"]["windSpeed"]
                        .toString(), 
                        dataMeasurement: '', 
                        dataMeasurement1: 'm/h',
                  ),
                   WeatherDetails(
                    icons: Icons.water_drop_sharp,
                    gradientColor: [Colors.blue,Colors.blue,Colors.black],
                    iconColor: Colors.white,
                    weatherName: 'Humidity',
                    weatherData:widget.data['timelines']["minutely"][1]
                            ["values"]["humidity"]
                        .toString(),
                        dataMeasurement: '%', 
                    icons1: Icons.wb_sunny_outlined,
                    gradientColor1: [Colors.red,Colors.orange,Colors.white],
                    iconColor1: Colors.white,
                    weatherName1: 'uv',
                    weatherData1: widget.data['timelines']["minutely"][1]
                            ["values"]["uvIndex"]
                        .toString(), 
                     
                        dataMeasurement1: 'Strong',
                  ),
                   WeatherDetails(
                    icons: Icons.remove_red_eye_outlined,
                    gradientColor: [Colors.red, Colors.blue, Colors.white],
                    iconColor: Colors.white,
                    weatherName: 'Visibility',
                    weatherData:widget.data['timelines']["minutely"][1]
                            ["values"]["visibility"]
                        .toString(),
                        dataMeasurement: 'mi',
                    icons1: Icons.compress_rounded,
                    gradientColor1: [Colors.red,Colors.white],
                    iconColor1: Colors.orange,
                    weatherName1: 'Air Pressure',
                    weatherData1: widget.data['timelines']["minutely"][1]
                            ["values"]["pressureSurfaceLevel"]
                        .toString(),  dataMeasurement1: 'hpa',
                  ),
                ],
              );
            }),
      ),
    );
  }
}

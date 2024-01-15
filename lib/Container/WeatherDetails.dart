import 'package:flutter/material.dart';

class WeatherDetails extends StatefulWidget {
  final List<Color> gradientColor;
  final IconData? icons;
  final Color iconColor;
  final String weatherName;
  final String weatherData;
  final String dataMeasurement;

  final List<Color> gradientColor1;
  final IconData? icons1;
  final Color iconColor1;
  final String weatherName1;
  final String weatherData1;
  final String dataMeasurement1;

  const WeatherDetails(
      {super.key,
      required this.gradientColor,
      this.icons,
      required this.iconColor,
      required this.weatherName,
      required this.weatherData,
      required this.gradientColor1,
      this.icons1,
      required this.iconColor1,
      required this.weatherName1,
      required this.weatherData1,
      required this.dataMeasurement,
      required this.dataMeasurement1});

  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                height: 150,
                width: 160,
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.10),
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    border: Border.all(
                        color: Colors.white.withOpacity(.10), width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: widget.gradientColor,
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icons,
                        color: widget.iconColor,
                        size: 30,
                      ),
                    ),
                    Text(
                      widget.weatherName,
                      style: TextStyle(color: Colors.white.withOpacity(.5)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.weatherData,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          widget.dataMeasurement,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 160,
              width: 170,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.10),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      color: Colors.white.withOpacity(.10), width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: widget.gradientColor1,
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icons1,
                      color: widget.iconColor1,
                      size: 30,
                    ),
                  ),
                  Text(
                    widget.weatherName1,
                    style: TextStyle(color: Colors.white.withOpacity(.5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.weatherData1,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          
                          widget.dataMeasurement1,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

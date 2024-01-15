import 'package:flutter/material.dart';

class WeatherForeCast extends StatefulWidget {
  final String forecastdays;
  final IconData? icones;
  final Color iconcolor;
  final String clouddata;
  final String clouddata1;
  final String clouddata2;
  final String clouddata3;
  final String clouddata4;
  final String clouddata5;

  final String forecastdays1;
  final String forecastdays2;
  final String forecastdays3;
  final String forecastdays4;
  final String forecastdays5;
  final String cloudstatus;

  const WeatherForeCast(
      {super.key,
      required this.forecastdays,
      this.icones,
      required this.clouddata,
      required this.forecastdays1,
      required this.forecastdays2,
      required this.forecastdays3,
      required this.forecastdays4,
      required this.iconcolor,
      required this.cloudstatus,
      required this.forecastdays5,
      required this.clouddata1,
      required this.clouddata2,
      required this.clouddata3,
      required this.clouddata4,
      required this.clouddata5});

  @override
  State<WeatherForeCast> createState() => _WeatherForeCastState();
}

class _WeatherForeCastState extends State<WeatherForeCast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Container(
            height: 300,
            width: 400,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.10),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                border:
                    Border.all(color: Colors.white.withOpacity(.10), width: 1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays1,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata1,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays2,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata2,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays3,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata3,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays4,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.forecastdays5,
                      style: TextStyle(color: Colors.white),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.orange],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        widget.icones,
                        color: Colors.white,
                      ),
                    ),
                    Text(widget.cloudstatus,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      widget.clouddata,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

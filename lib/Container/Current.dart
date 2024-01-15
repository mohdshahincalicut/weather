import 'package:flutter/material.dart';

class CurrentContainer extends StatefulWidget {
  final String weatherdata;
  final Color iconcolor;
  final IconData? icones;
  final String weatherdata1;
  final String weatherdata2;
  final String weatherdata3;
  final String weatherdata4;
  final String weatherdata5;
  const CurrentContainer({
    super.key,
    required this.weatherdata,
    required this.iconcolor,
    required this.icones,
    required this.weatherdata1,
    required this.weatherdata2,
    required this.weatherdata3,
    required this.weatherdata4,
    required this.weatherdata5,
  });

  @override
  State<CurrentContainer> createState() => _CurrentContainerState();
}

class _CurrentContainerState extends State<CurrentContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: 130,
          width: 400,
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.10),
              borderRadius: BorderRadius.all(Radius.circular(16)),
              border: Border.all(color: Colors.white.withOpacity(.10), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'now',
                    style: TextStyle(color: Colors.white),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '1:00',
                    style: TextStyle(color: Colors.white),
                  ),
                ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata1,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '2:00',
                    style: TextStyle(color: Colors.white),
                  ),
                ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata2,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '3:00',
                    style: TextStyle(color: Colors.white),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata3,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '4:00',
                    style: TextStyle(color: Colors.white),
                  ),
                 ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata4,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '5:00',
                    style: TextStyle(color: Colors.white),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.blue],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      widget.icones,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.weatherdata5,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

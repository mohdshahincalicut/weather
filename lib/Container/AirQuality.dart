import 'package:flutter/material.dart';

class AirQulity extends StatefulWidget {
  final String airQulity;
  const AirQulity({super.key, required this.airQulity});

  @override
  State<AirQulity> createState() => _AirQulityState();
}

class _AirQulityState extends State<AirQulity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 250,
        width: 400,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(.10),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: Colors.white.withOpacity(.10), width: 1)),
        child: Column(
          children: [
            Row(
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.blue],
                    ).createShader(bounds);
                  },
                  child:const Icon(
                    Icons.multitrack_audio_sharp,
                    color: Colors.red,
                    size: 50.0,
                  ),
                ),
              const  SizedBox(
                  width: 10,
                ),
              const  Text(
                  "Air Quality",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Satitsfactory',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7), fontSize: 25),
                ),
              const  SizedBox(
                  width: 10,
                ),
                Text(
                  widget.airQulity,
                  style:const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
            Text(
              'Air quality is acceptable. However, unusually sensitive people should consider reducing outdoor activity.',
              style: TextStyle(
                color: Colors.white.withOpacity(.5),
              ),
            ),
          const  SizedBox(height: 10,),
            Container(
              width:400,
              height: 10,
              decoration: BoxDecoration(
                  gradient:const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.red, Colors.red,Colors.orange, Colors.yellow, Colors.green],
    ),
                
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      ),
              ),
             
            ),
          ],
        ),
      ),
    );
  }
}

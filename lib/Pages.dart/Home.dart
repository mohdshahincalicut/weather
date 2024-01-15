import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather/ApiRequest.dart';
import 'package:weather/ApiResponce.dart';
import 'package:weather/Constants/Constants.dart';
import 'package:weather/Pages.dart/Weather.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  void initState() {
    
    super.initState();
  } 

  getdDetails() async {
    apiResponce = await getcalicutApi();
    print("test 1");
    print(apiResponce.statusCode);
    if (apiResponce.statusCode == 200) {
      print(apiResponce.data['request'][1]["name"]);
    } else {
      print("error from api,its not 200 statuscode");
    }
  }

  ApiRequest apiRequest = ApiRequest();
  late ApiResponce apiResponce;

  Future<ApiResponce> getcalicutApi() async {
    
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(end: Alignment.topCenter, colors: [
                  Colors.blueGrey[900]!,
                  Colors.blueGrey[800]!,
                  Colors.blueGrey[900]!,
                ])),
                child: LoadingAnimationWidget.threeArchedCircle(
                    color: Colors.white, size: 50)),
          );
        });

    var url_string = AppUrls.urlWeather +
        locatio_controller.text +
        "&apikey=bYCZgf0YRnyL1f03NqIAFsyTNvZ5S6Zf";

    return apiRequest.apiRequestGet(url_string);
  }

  void _incrementCounter() async {
    print(locatio_controller.text);
    print("hellllll");
    apiResponce = await getcalicutApi();
    print("test 1");
    print(apiResponce.statusCode);
    if (apiResponce.statusCode == 200) {
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => Weather(
                    data: apiResponce.data,
                  )));
      print(apiResponce.data['location']["name"]);
    } else {
      print("error from api,its not 200 statuscode");
    }

    print("test 2");
  }

  TextEditingController locatio_controller = TextEditingController();

  

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Explore",
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 45.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 34.0, vertical: 30.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: locatio_controller,
                onChanged: (String value) {},
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search Your City",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 14.0,
                  ),
                ),
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
              elevation: 50,
              color: Colors.white,
              onPressed: () {
                _incrementCounter();
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LACALES =[
 MapLocale('en',LacaleData .EN),
 MapLocale('ar',LacaleData .AR),
 MapLocale('zh',LacaleData .ZH),
];


mixin LacaleData{
  static const String title = 'title';
  static const String body = 'body';


  static const Map<String,dynamic> EN ={
   title: 'localizaiton',
   body: 'Temperature'
  };
  static const Map<String,dynamic>  AR={
     title: 'الموقع',
   body: 'درجة حرارة'
};
static const Map<String,dynamic>  ZH={ 
   title: '本土化',
   body: '溫度',
};
}
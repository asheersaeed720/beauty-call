import 'package:beauty_call/screens/customer/customer_dashboard_screen.dart';
import 'package:beauty_call/screens/customer/shop_detail_screen.dart';
import 'package:beauty_call/screens/customer/shop_screen.dart';
import 'package:beauty_call/screens/main_screens/main_screen.dart';
import 'package:beauty_call/utils/app_theme.dart';
import 'package:beauty_call/utils/custom_routes.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 194, 40, .1),
  100: Color.fromRGBO(136, 194, 40, .2),
  200: Color.fromRGBO(136, 194, 40, .3),
  300: Color.fromRGBO(136, 194, 40, .4),
  400: Color.fromRGBO(136, 194, 40, .5),
  500: Color.fromRGBO(136, 194, 40, .6),
  600: Color.fromRGBO(136, 194, 40, .7),
  700: Color.fromRGBO(136, 194, 40, .8),
  800: Color.fromRGBO(136, 194, 40, .9),
};

MaterialColor customPrimaryColor = MaterialColor(0xFF016ABB, color);
MaterialColor customAccentColor = MaterialColor(0xFF88C228, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty Call',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customPrimaryColor,
        accentColor: customAccentColor,
        errorColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        textTheme: AppTheme.textTheme,
      ),
      home: MainScreen(),
      // home: ShopDetailScreen(),
      routes: customRoutes,
    );
  }
}

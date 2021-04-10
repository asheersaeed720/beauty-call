import 'package:beauty_call/screens/auth_screen.dart';
import 'package:beauty_call/utils/app_theme.dart';
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
      theme: ThemeData(
        primarySwatch: customPrimaryColor,
        accentColor: customAccentColor,
        errorColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        textTheme: AppTheme.textTheme,
      ),
      home: AuthScreen(),
    );
  }
}

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Text('This is Demo Screen!'),
      ),
    );
  }
}

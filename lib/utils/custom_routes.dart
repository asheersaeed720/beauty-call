import 'package:beauty_call/screens/customer/customer_dashboard_screen.dart';
import 'package:beauty_call/screens/customer/shop_screen.dart';
import 'package:beauty_call/screens/main_screens/auth/login_screen.dart';
import 'package:beauty_call/screens/main_screens/auth/signup_screen.dart';
import 'package:beauty_call/screens/main_screens/auth_screen.dart';
import 'package:beauty_call/screens/vender/my_appointments.dart';
import 'package:beauty_call/screens/vender/vender_dashboard_screen.dart';

final customRoutes = {
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  VenderDashboardScreen.routeName: (context) => VenderDashboardScreen(),
  MyAppointments.routeName: (context) => MyAppointments(),
  AuthScreen.routeName: (context) => AuthScreen(),
  CustomerDashboardScreen.routeName: (context) => CustomerDashboardScreen(),
  ShopScreen.routeName: (context) => ShopScreen(),
};

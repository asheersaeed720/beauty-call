import 'package:beauty_call/screens/customer/customer_dashboard_screen.dart';
import 'package:beauty_call/screens/vender/auth_screen.dart';
import 'package:beauty_call/screens/vender/doctor_home_screen.dart';
import 'package:beauty_call/screens/vender/doctor_signin_screen.dart';
import 'package:beauty_call/screens/vender/doctor_signup_screen.dart';
import 'package:beauty_call/screens/vender/my_appointments.dart';

final customRoutes = {
  DoctorSignUpScreen.routeName: (context) => DoctorSignUpScreen(),
  DoctorSignInScreen.routeName: (context) => DoctorSignInScreen(),
  DoctorHomeScreen.routeName: (context) => DoctorHomeScreen(),
  MyAppointments.routeName: (context) => MyAppointments(),
  AuthScreen.routeName: (context) => AuthScreen(),
  CustomerDashboardScreen.routeName: (context) => CustomerDashboardScreen(),
};

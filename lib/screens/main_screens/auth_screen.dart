import 'package:beauty_call/screens/main_screens/auth/login_screen.dart';
import 'package:beauty_call/screens/main_screens/auth/signup_screen.dart';
import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth';

  final String fromWhichScreen;

  AuthScreen({this.fromWhichScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/doctor/images/splash_logo.png',
                height: 110,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                  bottom: 25.0,
                ),
                child: Text(
                  'Create a free account',
                  style: khulaSemiBold.copyWith(
                    color: AppTheme.COLOR_GREY,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: CustomButton(
                  btnTxt: 'Create an Account',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: CustomButton(
                  btnTxt: 'Login',
                  isWhiteBackground: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen(fromWhichScreen: fromWhichScreen)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

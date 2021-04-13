import 'package:beauty_call/screens/customer/customer_dashboard_screen.dart';
import 'package:beauty_call/screens/main_screens/auth_screen.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
              Container(
                margin: EdgeInsets.all(15),
                child: CustomButton(
                  btnTxt: 'Login as Vender',
                  isWhiteBackground: true,
                  onTap: () {
                    Navigator.of(context).pushNamed(AuthScreen.routeName);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: CustomButton(
                  btnTxt: 'Login as Customer',
                  isWhiteBackground: true,
                  onTap: () {
                    Navigator.of(context).pushNamed(AuthScreen.routeName);
                    // Navigator.of(context)
                    //     .pushNamed(CustomerDashboardScreen.routeName);
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

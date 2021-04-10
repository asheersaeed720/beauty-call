import 'package:beauty_call/screens/vender/doctor_signin_screen.dart';
import 'package:beauty_call/screens/vender/doctor_signup_screen.dart';
import 'package:beauty_call/utils/vender_theme/colorResources.dart';
import 'package:beauty_call/utils/vender_theme/dimensions.dart';
import 'package:beauty_call/utils/vender_theme/strings.dart';
import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth';

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
                  top: 60,
                  bottom: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                ),
                child: Text(
                  Strings.CREATE_A_FREE_ACCOUNT,
                  style: khulaSemiBold.copyWith(
                    color: ColorResources.COLOR_GREY,
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: CustomButton(
                  btnTxt: Strings.CREATE_AN_ACCOUNT,
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (_) => DoctorSignUpScreen()));
                    Navigator.of(context)
                        .pushNamed(DoctorSignUpScreen.routeName);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: CustomButton(
                  btnTxt: Strings.SIGN_IN,
                  isWhiteBackground: true,
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (_) => DoctorSignInScreen()));
                    Navigator.of(context)
                        .pushNamed(DoctorSignInScreen.routeName);
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

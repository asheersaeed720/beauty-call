import 'package:beauty_call/screens/customer/customer_dashboard_screen.dart';
import 'package:beauty_call/screens/vender/vender_dashboard_screen.dart';
import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/custom_button.dart';
import 'package:beauty_call/widgets/custom_pass_field.dart';
import 'package:beauty_call/widgets/custom_text_field.dart';
import 'package:beauty_call/widgets/social_media_widget.dart';
import 'package:beauty_call/widgets/textfield_title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  final String fromWhichScreen;

  LoginScreen({this.fromWhichScreen});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    FocusNode _emailNode = FocusNode();
    FocusNode _passNode = FocusNode();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/doctor/images/splash_logo.png',
                height: 110,
                width: 100,
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 15.0,
                ),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/email.png',
                      title: 'Email',
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: CustomTextField(
                        hintTxt: 'johndoe@email.com',
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        focusNode: _emailNode,
                        nextNode: _passNode,
                        isEmail: true,
                        controller: _emailController,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/security.png',
                      title: 'Password',
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: CustomPassField(
                        hintTxt: 'Enter your password',
                        textInputAction: TextInputAction.done,
                        focusNode: _passNode,
                        controller: _passwordController,
                      ),
                    ),
                  ],
                ),
              ),

              // for signin button
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: CustomButton(
                  btnTxt: 'Sign In',
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => StartupScreen()));

                    if (fromWhichScreen == 'vender') {
                      Navigator.of(context)
                          .pushNamed(VenderDashboardScreen.routeName);
                    } else {
                      Navigator.of(context)
                          .pushNamed(CustomerDashboardScreen.routeName);
                    }
                  },
                ),
              ),

              FlatButton(
                onPressed: () {
                  //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => AuthScreen()));
                },
                child: Text(
                  'Forget password?',
                  style: khulaRegular.copyWith(
                    fontSize: 12.0,
                    color: AppTheme.COLOR_GREY,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Or sign in with',
                      style: khulaRegular.copyWith(
                        color: AppTheme.COLOR_GREY,
                        fontSize: 12.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: 10,
                        color: AppTheme.COLOR_GAINSBORO,
                      ),
                    ),
                  ],
                ),
              ),

              // for or sign in
              Container(
                margin: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    SocialMediaWidget(
                      imageUrl: 'assets/doctor/Icon/google.png',
                    ),
                    SocialMediaWidget(
                      imageUrl: 'assets/doctor/Icon/facebook.png',
                    ),
                    SocialMediaWidget(
                      imageUrl: 'assets/doctor/Icon/twitter.png',
                    ),
                    SocialMediaWidget(
                      imageUrl: 'assets/doctor/Icon/instagram.png',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorSignUpScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haven\'t any? ',
                      style: khulaSemiBold.copyWith(
                          color: AppTheme.COLOR_GREY, fontSize: 12.0),
                    ),
                    Text(
                      'Create an Account',
                      style: khulaSemiBold.copyWith(
                          color: AppTheme.COLOR_PRIMARY, fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

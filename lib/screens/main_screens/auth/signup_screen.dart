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
import 'package:country_code_picker/country_code_picker.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    FocusNode _emailNode = FocusNode();
    FocusNode _passNode = FocusNode();
    FocusNode _nameNode = FocusNode();
    FocusNode _phoneNode = FocusNode();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/dummy_logo.png',
                height: 110,
                width: 100,
              ),
              SizedBox(
                height: 50.0,
              ),
              // for email
              Container(
                margin: EdgeInsets.only(
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
                      margin: EdgeInsets.only(top: 20.0),
                      child: CustomTextField(
                        hintTxt: 'johndoe@email.com',
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        focusNode: _emailNode,
                        nextNode: _nameNode,
                        isEmail: true,
                        controller: _emailController,
                      ),
                    ),
                  ],
                ),
              ),

              // for Name
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 15.0,
                ),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/people.png',
                      title: 'Name',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: CustomTextField(
                        hintTxt: 'Enter your name',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        focusNode: _nameNode,
                        nextNode: _phoneNode,
                        controller: _nameController,
                      ),
                    ),
                  ],
                ),
              ),

              // for phone number
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 15.0,
                ),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/phone 2.png',
                      title: 'Phone',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              //alignment: Alignment.center,
                              child: CountryCodePicker(
                                onChanged: print,
                                initialSelection: 'BD',
                                favorite: ['+88', 'BD'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: CustomTextField(
                                hintTxt: 'Enter your phone no.',
                                textInputType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                focusNode: _phoneNode,
                                nextNode: _passNode,
                                isPhoneNumber: true,
                                controller: _phoneController,
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 1,
                        color: AppTheme.COLOR_GAINSBORO,
                      ),
                    ),
                  ],
                ),
              ),

              // for password
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  bottom: 15.0,
                ),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/security.png',
                      title: 'Password',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
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
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: CustomButton(
                  btnTxt: 'Sign Up',
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ProfileEditScreen(fromSetting: false)));
                    Navigator.of(context)
                        .pushNamed(VenderDashboardScreen.routeName);
                  },
                ),
              ),

              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorSignInScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: khulaSemiBold.copyWith(
                        color: AppTheme.COLOR_GREY,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      'Sign In',
                      style: khulaSemiBold.copyWith(
                          color: AppTheme.COLOR_PRIMARY, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
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
            ],
          ),
        ),
      ),
    );
  }
}

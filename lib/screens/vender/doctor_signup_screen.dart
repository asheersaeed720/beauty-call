import 'package:beauty_call/screens/vender/doctor_home_screen.dart';
import 'package:beauty_call/utils/vender_theme/colorResources.dart';
import 'package:beauty_call/utils/vender_theme/dimensions.dart';
import 'package:beauty_call/utils/vender_theme/strings.dart';
import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/custom_button.dart';
import 'package:beauty_call/widgets/custom_pass_field.dart';
import 'package:beauty_call/widgets/custom_text_field.dart';
import 'package:beauty_call/widgets/social_media_widget.dart';
import 'package:beauty_call/widgets/textfield_title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class DoctorSignUpScreen extends StatelessWidget {
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
                    left: Dimensions.MARGIN_SIZE_DEFAULT,
                    right: Dimensions.MARGIN_SIZE_DEFAULT,
                    bottom: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/email.png',
                      title: Strings.EMAIL,
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
                      child: CustomTextField(
                        hintTxt: Strings.NIPON_MAIL,
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
                    left: Dimensions.MARGIN_SIZE_DEFAULT,
                    right: Dimensions.MARGIN_SIZE_DEFAULT,
                    bottom: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/people.png',
                      title: Strings.NAME,
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
                      child: CustomTextField(
                        hintTxt: Strings.ENTER_YOUR_NAME,
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
                    left: Dimensions.MARGIN_SIZE_DEFAULT,
                    right: Dimensions.MARGIN_SIZE_DEFAULT,
                    bottom: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/phone 2.png',
                      title: Strings.PHONE,
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
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
                                hintTxt: Strings.ENTER_YOUR_PHONE_NO,
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
                        color: ColorResources.COLOR_GAINSBORO,
                      ),
                    ),
                  ],
                ),
              ),

              // for password
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.MARGIN_SIZE_DEFAULT,
                    right: Dimensions.MARGIN_SIZE_DEFAULT,
                    bottom: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Stack(
                  children: [
                    TextFieldTitleWidget(
                      imageUrl: 'assets/doctor/Icon/security.png',
                      title: Strings.PASSWORD,
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
                      child: CustomPassField(
                        hintTxt: Strings.ENTER_YOUR_PASSWORD,
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
                  left: Dimensions.MARGIN_SIZE_DEFAULT,
                  right: Dimensions.MARGIN_SIZE_DEFAULT,
                ),
                child: CustomButton(
                  btnTxt: Strings.SIGN_UP,
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ProfileEditScreen(fromSetting: false)));
                    Navigator.of(context).pushNamed(DoctorHomeScreen.routeName);
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
                      Strings.ALREADY_HAVE_AN_ACCOUNT,
                      style: khulaSemiBold.copyWith(
                          color: ColorResources.COLOR_GREY,
                          fontSize: Dimensions.FONT_SIZE_SMALL),
                    ),
                    Text(
                      Strings.SIGN_IN,
                      style: khulaSemiBold.copyWith(
                          color: ColorResources.COLOR_PRIMARY,
                          fontSize: Dimensions.FONT_SIZE_SMALL),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
                child: Row(
                  children: [
                    Text(
                      Strings.OR_SIGN_IN,
                      style: khulaRegular.copyWith(
                        color: ColorResources.COLOR_GREY,
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: 10,
                        color: ColorResources.COLOR_GAINSBORO,
                      ),
                    ),
                  ],
                ),
              ),

              // for or sign in
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
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

import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String btnTxt;
  final bool isWhiteBackground;

  CustomButton(
      {this.onTap, @required this.btnTxt, this.isWhiteBackground = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1),
            ),
          ],
          color:
              isWhiteBackground ? AppTheme.COLOR_WHITE : AppTheme.COLOR_PRIMARY,
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: onTap,
        padding: EdgeInsets.all(0),
        child: Text(btnTxt,
            style: AppTheme.poppinsSemiBold.copyWith(
                color: isWhiteBackground
                    ? AppTheme.COLOR_PRIMARY
                    : AppTheme.COLOR_WHITE)),
      ),
    );
  }
}

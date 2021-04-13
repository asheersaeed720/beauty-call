import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:flutter/material.dart';

class CustomPassField extends StatefulWidget {
  final TextEditingController controller;
  final String hintTxt;
  final FocusNode focusNode;
  final FocusNode nextNode;
  final TextInputAction textInputAction;

  CustomPassField(
      {this.controller,
      this.hintTxt,
      this.focusNode,
      this.nextNode,
      this.textInputAction});

  @override
  _CustomPassFieldState createState() => _CustomPassFieldState();
}

class _CustomPassFieldState extends State<CustomPassField> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          TextFormField(
            cursorColor: AppTheme.COLOR_PRIMARY,
            controller: widget.controller,
            obscureText: _obscureText,
            focusNode: widget.focusNode,
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            onFieldSubmitted: (v) {
              setState(() {
                widget.textInputAction == TextInputAction.done
                    ? FocusScope.of(context).consumeKeyboardToken()
                    : FocusScope.of(context).requestFocus(widget.nextNode);
              });
            },
            validator: (value) {
              return null;
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppTheme.COLOR_GREY,
                ),
                onPressed: _toggle,
              ),
              hintText: widget.hintTxt ?? '',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
              isDense: true,
              hintStyle: khulaRegular.copyWith(
                color: AppTheme.COLOR_GREY,
                fontSize: 12.0,
              ),
              border: InputBorder.none,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Container(
              height: 1,
              color: AppTheme.COLOR_GAINSBORO,
            ),
          ),
        ],
      ),
    );
  }
}

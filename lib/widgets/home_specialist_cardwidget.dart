import 'package:beauty_call/models/specialist.dart';
import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSpecialistCardWidget extends StatelessWidget {
  final SpeciaList speciaList;

  HomeSpecialistCardWidget(this.speciaList);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 246,
      height: 106,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 20, left: 5),
      decoration: BoxDecoration(
        color: AppTheme.COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: .2,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    speciaList.bannerTitle,
                    style: khulaBold.copyWith(
                      color: AppTheme.COLOR_GREY,
                    ),
                  )),
              Container(
                  width: 50,
                  height: 18,
                  padding: EdgeInsets.only(top: 1),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: AppTheme.COLOR_SPECIALIST_CARD_PRICE,
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Text('\$${speciaList.price}',
                      textAlign: TextAlign.center,
                      style: khulaBold.copyWith(
                          color: AppTheme.COLOR_WHITE, fontSize: 12.0))),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 3,
                  height: 44,
                  margin: EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  color: AppTheme.COLOR_PRIMARY,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      speciaList.bannerDescription,
                      style: khulaRegular.copyWith(
                        color: AppTheme.COLOR_GREY,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

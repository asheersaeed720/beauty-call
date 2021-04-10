import 'package:beauty_call/models/appointment_model.dart';
import 'package:beauty_call/utils/vender_theme/colorResources.dart';
import 'package:beauty_call/utils/vender_theme/dimensions.dart';
import 'package:beauty_call/utils/vender_theme/strings.dart';
import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentRepo {
  List<AppointmentModel> getAppointmentList() {
    List<AppointmentModel> appointmentList = [
      AppointmentModel(
          'assets/doctor/images/doctor1.jpg',
          Strings.DOCTOR_NAME1,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Today-10 June, 2020',
          '10:00 AM-11:00 AM',
          '5'),
      AppointmentModel(
          'assets/doctor/images/doctor2.jpg',
          Strings.DOCTOR_NAME2,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '8'),
      AppointmentModel(
          'assets/doctor/images/doctor3.jpg',
          Strings.DOCTOR_NAME3,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '13'),
      AppointmentModel(
          'assets/doctor/images/doctor1.jpg',
          Strings.DOCTOR_NAME1,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Today-10 June, 2020',
          '10:00 AM-11:00 AM',
          '5'),
      AppointmentModel(
          'assets/doctor/images/doctor2.jpg',
          Strings.DOCTOR_NAME2,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '8'),
      AppointmentModel(
          'assets/doctor/images/doctor3.jpg',
          Strings.DOCTOR_NAME3,
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '13'),
    ];
    return appointmentList;
  }
}

class MyAppointments extends StatefulWidget {
  static const String routeName = '/client-info';

  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  bool isIncoming = true;

  AppointmentRepo _appointmentRepo = AppointmentRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(children: [
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Text('My Appointments',
                      style: khulaBold.copyWith(
                          color: ColorResources.COLOR_GREY,
                          fontSize: Dimensions.FONT_SIZE_LARGE)),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                UpperButton(
                  title: 'incoming',
                  isPressed: isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = true;
                    });
                  },
                ),
                SizedBox(width: 40),
                UpperButton(
                  title: 'Past',
                  isPressed: !isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = false;
                    });
                  },
                ),
              ]),
            ),
            Expanded(
                child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
              itemCount: _appointmentRepo.getAppointmentList().length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: AppointmentWidget(
                      _appointmentRepo.getAppointmentList()[index]),
                );
              },
            )),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class UpperButton extends StatelessWidget {
  final String title;
  final bool isPressed;
  final Function onTap;

  UpperButton({@required this.title, @required this.isPressed, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(7),
          color: isPressed
              ? ColorResources.COLOR_PRIMARY
              : ColorResources.COLOR_WHITE,
        ),
        child: Center(
            child: Text(title,
                style: isPressed
                    ? khulaSemiBold.copyWith(color: ColorResources.COLOR_WHITE)
                    : khulaSemiBold.copyWith(
                        color: ColorResources.COLOR_PRIMARY))),
      ),
    ));
  }
}

class AppointmentWidget extends StatelessWidget {
  final AppointmentModel appointmentModel;

  AppointmentWidget(this.appointmentModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorResources.COLOR_WHITE,
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.PADDING_SIZE_DEFAULT,
          horizontal: Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(children: [
        Row(
          children: [
            Image.asset(appointmentModel.imageUrl,
                height: 51, width: 51, fit: BoxFit.scaleDown),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointmentModel.name,
                  style: khulaSemiBold.copyWith(
                      color: ColorResources.COLOR_PRIMARY, fontSize: 20.0),
                ),
                Text(
                  appointmentModel.doctorDesignation,
                  style: khulaRegular.copyWith(
                      color: ColorResources.COLOR_GREY,
                      height: 1,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.access_time,
                    color: ColorResources.COLOR_GREY2, size: 17),
                SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                Text(
                  Strings.VISIT_TIME,
                  style: khulaSemiBold.copyWith(
                      color: ColorResources.COLOR_GREY2, fontSize: 13),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.attach_money,
                    color: ColorResources.COLOR_GREY2, size: 17),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                Text(
                  Strings.FEES_INFORMATION,
                  style: khulaSemiBold.copyWith(
                      color: ColorResources.COLOR_GREY2, fontSize: 13),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appointmentModel.date,
              style: khulaRegular.copyWith(
                  color: ColorResources.COLOR_GREY,
                  fontSize: Dimensions.FONT_SIZE_SMALL),
            ),
            Text(
              '\$ ${appointmentModel.price}',
              style: khulaSemiBold.copyWith(
                  color: ColorResources.COLOR_GREY,
                  fontSize: Dimensions.FONT_SIZE_SMALL),
            ),
          ],
        ),
        SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appointmentModel.time,
              style: khulaBold.copyWith(
                  color: ColorResources.COLOR_PRIMARY, fontSize: 13),
            ),
            Text(
              Strings.FEE,
              style: khulaSemiBold.copyWith(
                  color: ColorResources.COLOR_PRIMARY,
                  fontSize: Dimensions.FONT_SIZE_SMALL),
            ),
          ],
        ),
      ]),
    );
  }
}

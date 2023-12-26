import 'dart:convert';
import 'package:athletic_hub/app/feature/event_create/presentation/date_create.dart';
import 'package:athletic_hub/app/feature/event_create/presentation/photo_bloc/photobloc.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'photo_drop_box.dart';

class EventCreate extends StatefulWidget {
  const EventCreate({super.key});

  @override
  State<EventCreate> createState() => _EventCreateState();
}

class _EventCreateState extends State<EventCreate> {
  late EventModel event;
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();
  String title = '';
  String discription = '';
  late String countTeamsStr = '';
  late String counMembersStr = '';
  late int countTeams;
  late int counMembers;
  String lacationUrl = '';
  late List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: PhotoDropBox()),
              SizedBox(
                width: 70.w,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 69,
                    width: 555,
                    child: titleCreate(context),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      width: 555,
                      height: 170,
                      child: discriptionCreate(context),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                      height: 90, width: 555, child: locationCreate(context)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              timeCreate(context),
              DateCreateWidget(onDateSelected: (day) {
                setState(() {
                  date = day;
                });
              }),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                  height: 69, width: 130, child: teamsCountCreate(context)),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                  height: 69, width: 130, child: membersCountCreate(context)),
              const SizedBox(
                width: 15,
              ),
              SizedBox(height: 69, width: 340, child: tagsCreate(context)),
            ],
          ),
          SizedBox(
            height: 76.h,
          ),
          CreateButton(context),
        ],
      ),
    );
  }

  Widget titleCreate(BuildContext context) {
    return Container(
      height: 69,
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.title = value),
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'НАЗВАНИЕ',
            hintStyle: GoogleFonts.montserrat(
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
            hoverColor: Colors.transparent,
            prefixIcon: const Padding(
              padding: EdgeInsets.fromLTRB(0, 19, 10, 19),
              child: Icon(
                Icons.lock_outline,
                color: Colors.transparent,
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  bool CanParse(String str) {
    if(str.isEmpty)
      return true;
    var value = int.tryParse(str);
    if (value != null)
      return true;
    else
      return false;
  }

  Widget teamsCountCreate(BuildContext context) {
    return Container(
      height: 69,
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.countTeamsStr = value),
        decoration: InputDecoration(
            errorText: CanParse(this.countTeamsStr) ? null : 'Введите число',
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'Команд',
            hintStyle: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),
            hoverColor: Colors.transparent,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  Widget membersCountCreate(BuildContext context) {
    return Container(
      height: 69,
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.counMembersStr = value),
        decoration: InputDecoration(
            errorText: CanParse(this.counMembersStr) ? null : 'Введите число',
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'Участников',
            hintStyle: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),
            hoverColor: Colors.transparent,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  Widget timeCreate(BuildContext context) {
    return TextButton(
      child: Text("${time.hour}:${time.minute}",
          style: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w300,
          )),
      onPressed: () async {
        final TimeOfDay? timeOfDay = await showTimePicker(
            context: context,
            initialTime: time,
            initialEntryMode: TimePickerEntryMode.input,
            builder: (context, childWidget) {
              Locale locale = Localizations.localeOf(context);
              final force24HourFormat = locale.countryCode == 'RU';
              return Theme(
                data: ThemeData.light().copyWith(
                  primaryColor: Colors.white70,
                  colorScheme: ColorScheme.light(
                    primary: Colors.black45,
                  ),
                  buttonTheme: ButtonThemeData(
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
                child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      alwaysUse24HourFormat: true,
                    ),
                    child: childWidget!),
              );
            });
        if (timeOfDay != null) {
          setState(() {
            time = timeOfDay;
          });
        }
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: DateTime(2025),
      builder: (context, childWidget) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.white70,
            colorScheme: ColorScheme.light(
              primary: Colors.black45,
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: true,
            ),
            child: childWidget!,
          ),
        );
      },
    );
    if (picked != null && picked != date) {
      date = picked;
    }
  }

  Widget dateCreate(BuildContext) {
    return TextButton(
      onPressed: () => _selectDate(context),
      child: Text(
        DateFormat('dd-MM-yyyy').format(date),
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget discriptionCreate(BuildContext context) {
    return Container(
      height: 170,
      child: TextField(
        maxLines: 4,
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.discription = value),
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'ОПИСАНИЕ',
            hintStyle: GoogleFonts.montserrat(
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
            hoverColor: Colors.transparent,
            prefixIcon: const Padding(
              padding: EdgeInsets.fromLTRB(0, 19, 10, 19),
              child: Icon(
                Icons.lock_outline,
                color: Colors.transparent,
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  Widget locationCreate(BuildContext context) {
    return Container(
      height: 69,
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.lacationUrl = value),
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'Место на карте',
            hintStyle: GoogleFonts.montserrat(
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
            errorText:
                isYandexMapsUrl(lacationUrl) || isGoogleMapsUrl(lacationUrl)
                    ? ''
                    : 'Ссылка не ведет на карты',
            hoverColor: Colors.transparent,
            prefixIcon: const Padding(
              padding: EdgeInsets.fromLTRB(0, 19, 10, 19),
              child: Icon(
                Icons.lock_outline,
                color: Colors.transparent,
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  Widget tagsCreate(BuildContext context) {
    return Container(
      height: 69,
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
        onChanged: (value) => setState(() => this.tags = value.split(' ')),
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xe5ffffff),
            hintText: 'Теги',
            hintStyle: GoogleFonts.montserrat(
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
            hoverColor: Colors.transparent,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }

  bool isYandexMapsUrl(String url) {
    return RegExp(r'https?://yandex\.ru/maps/').hasMatch(url) ||
        RegExp(r'https?://yandex\.ru/profile/').hasMatch(url);
  }

  bool isGoogleMapsUrl(String url) {
    return RegExp(r'https?://(www\.)?google\.com/maps/').hasMatch(url) ||
        url.isEmpty;
  }

  bool isUnlockButton() {
    return title.isNotEmpty &&
            discription.isNotEmpty &&
        (isYandexMapsUrl(lacationUrl) ||
        isGoogleMapsUrl(lacationUrl) )&&
    CanParse(countTeamsStr) && CanParse(counMembersStr);
  }

  DateTime mergeDateTimeAndTimeOfDay(DateTime date, TimeOfDay time) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  Widget CreateButton(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      return switch (state) {
        final PhotoInitial _ => const Center(
            child: CircularProgressIndicator(),
          ),
        final PhotoRead _ => ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffededed),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(220, 60)),
            child: Text(
              'СОЗДАТЬ',
              style: GoogleFonts.montserrat(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        final PhotoSuccess state => ElevatedButton(
            onPressed: isUnlockButton()
                ? () {
                    Navigator.of(context).pop();
                    counMembers = int.parse(counMembersStr);
                    countTeams = int.parse(countTeamsStr);
                    event = EventModel(
                        id: '1',
                        idCreator: '1',
                        title: title,
                        imagePath: base64Encode(state.photo),
                        text: discription,
                        placeUrl: '',
                        time: mergeDateTimeAndTimeOfDay(date, time),
                        tags: []);
                  }
                : null,
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffededed),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(220, 60)),
            child: Text(
              'СОЗДАТЬ',
              style: GoogleFonts.montserrat(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      };
    });
  }
}

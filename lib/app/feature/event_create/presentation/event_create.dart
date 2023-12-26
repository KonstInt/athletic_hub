import 'package:athletic_hub/app/feature/event_create/presentation/photo_bloc/photobloc.dart';
import 'package:athletic_hub/app/feature/events/domain/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
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
  String title = '';
  String discription = '';

  String lacationUrl = '';
  late DateTime date;

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
                width: 70,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 69,
                    width: 555,
                    child: titleCreate(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33),
                    child: SizedBox(
                      width: 555,
                      height: 170,
                      child: discriptionCreate(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 33.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50, width: 140, child: timeCreate(context)),
            ],
          ),
          SizedBox(
            height: 152.h,
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
            }
        );
        if (timeOfDay != null) {
          setState(() {
            time = timeOfDay;
          });
        }
      },
    );
  }

  //Widget dateCreate(BuildContext context) {
  //  return  DateTimeField(format: DateFormat('hh:mm dd-mm-YYYY'), onShowPicker: (context){} );
  //}
  Widget dateCreate(BuildContext context) {
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

  bool isUnlockButton() {
    return title.isNotEmpty &&
        discription.isNotEmpty &&
        context
            .read<PhotoBloc>()
            .state != null;
  }

  Widget CreateButton(BuildContext context) {
    return ElevatedButton(
      onPressed: isUnlockButton()
          ? () {
        Navigator.of(context).pop();
        event = EventModel(
            id: '1',
            idCreator: '1',
            title: title,
            imagePath: context
                .read<PhotoBloc>().state.toString(),
            text: discription,
            placeUrl: '',
            time: DateTime.parse('1969-07-20 20:18:04Z'),
            tags: []);
      }
          : null,
      child: Text(
        'СОЗДАТЬ',
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffededed),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: Size(220, 60)),
    );
  }
}

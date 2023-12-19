import 'dart:js_interop';

import 'package:athletic_hub/app/pages/registration_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../feature/events/presentation/event_list.dart';
import '../feature/registration/domain/bloc/authorization_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: const Size.fromHeight(150.0),
          child: Container(
            padding: const EdgeInsets.fromLTRB(165, 25, 165, 25),
            width: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xffa5fddd),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0, 5),
                  blurRadius: 5,
                ),
              ],
            ),
            child:
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                      'ATHLETIC-HUB ',
                      style: GoogleFonts.montserrat
                        (
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        height: 1.2175,
                        color: const Color(0xff000000),
                      ),
                    )),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return RegistrationPage();
                          }));
                    },
                    child: Text(
                      'войти',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.2175,
                        color: const Color(0xff1f2029),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        body: const Center(
            child: EventList())

    );
  }
}
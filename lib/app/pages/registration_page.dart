import 'package:athletic_hub/app/feature/registration/domain/bloc/authorization_bloc.dart';
import 'package:athletic_hub/app/feature/registration/domain/bloc/authorization_bloc.dart';
import 'package:athletic_hub/app/feature/registration/presentation/entering.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../feature/registration/presentation/registration.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(165, 25, 165, 25),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Expanded(
                    child: Text(
                      'ATHLETIC-HUB ',
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        height: 1.2175,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0xffcccccc),
        child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
          builder: (context, state) {
            return switch (state) {
              final AuthorizationInitial _ => const Center(
                  child: CircularProgressIndicator(),
                ),
              final AuthorizationEnter state => Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 128),
                              child: Text(
                                'ВХОД',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthorizationBloc>()
                                      .add(RegEvent());
                                },
                                child: Text(
                                  'РЕГИСТРАЦИЯ',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(width: 610, child: Entering()),
                    ],
                  ),
                ),
              final AuthorizationSuccess _ => const Center(
                  child: CircularProgressIndicator(),
                ),
              final AuthorizationFailure state => Center(
                  child: Text('Error'),
                ),
              final AuthorizationReg state => Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 128),
                                child: TextButton(
                                  onPressed: () async {
                                    context
                                        .read<AuthorizationBloc>()
                                        .add(EnterEvent());
                                  },
                                  child: Text(
                                    'ВХОД',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                )),
                            Text(
                              'РЕГИСТРАЦИЯ',
                              style: GoogleFonts.montserrat(
                                fontSize: 55,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 610, child: Registration()),
                    ],
                  ),
                ),
            };
          },
        ),
      ),
    );
  }
}

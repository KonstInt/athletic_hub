import 'package:athletic_hub/app/feature/event_create/presentation/event_create.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../feature/registration/domain/bloc/authorization_bloc.dart';

class EventCreatPage extends StatelessWidget {
  const EventCreatPage({super.key});

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
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                    'ATHLETIC-HUB ',
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      height: 1.2175,
                      color: Colors.white,
                    ),
                  )),
              BlocBuilder<AuthorizationBloc, AuthorizationState>(
                builder: (context, state) {
                  return switch (state) {
                    final AuthorizationInitial _ => TextButton(
                      onPressed: () {},
                      child: Text(
                        'войти',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2175,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    final AuthorizationEnter _ => TextButton(
                      onPressed: () {},
                      child: Text(
                        'войти',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2175,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    final AuthorizationReg _ => TextButton(
                      onPressed: () {},
                      child: Text(
                        'войти',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2175,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    final AuthorizationSuccess state => TextButton(
                      onPressed: () {
                        _showPopupMenu(context);
                      },
                      child: Text(
                        state.auth.login,
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2175,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    final AuthorizationFailure _ => TextButton(
                      onPressed: () {},
                      child: Text(
                        'не удалось войти',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.2175,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  };
                },
              ),
            ],
          ),
        ),
      ),

      body: Container(
        color:  Color(0xffcccccc),
        child: CustomScrollView(
          slivers:[
            SliverToBoxAdapter(
              child:  Column(
                  children: [
                    SizedBox(height: 50.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "СОЗДАЙТЕ МЕРОПРИЯТИЕ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 55,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],),
                    SizedBox(height: 120.h,),
                    EventCreate(),
                  ]
              ),
            )
          ]
        ),
      )




    );
  }

  void _showPopupMenu(BuildContext context) async {
    await showMenu(
      context: context,
      color: Colors.green[49],
      position: RelativeRect.fromLTRB(550, 100, 100, 0),
      items: [
        PopupMenuItem(
          onTap: () {
            Navigator.of(context).pop();
          },
          value: 1,
          child: Text('Список мероприятий',
              style: GoogleFonts.montserrat(
                color: const Color(0xff000000),
                fontSize: 20,
              )),
        ),
        PopupMenuItem(
          onTap: () {
            context.read<AuthorizationBloc>().add(EnterEvent());
            Navigator.of(context).pop();
          },
          value: 2,
          child: Text('Выйти',
              style: GoogleFonts.montserrat(
                color: const Color(0xff000000),
                fontSize: 20,
              )),
        ),
      ],
      elevation: 8.0,
    ).then((value) {});
  }
}

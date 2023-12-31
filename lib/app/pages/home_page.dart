import 'package:athletic_hub/app/feature/filters/domain/models/filter_bloc_model.dart';
import 'package:athletic_hub/app/feature/filters/domain/models/filter_model.dart';
import 'package:athletic_hub/app/feature/filters/presentation/filters.dart';
import 'package:athletic_hub/app/pages/event_creat_page.dart';
import 'package:athletic_hub/app/pages/registration_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../feature/events/presentation/event_list.dart';
import '../feature/registration/domain/bloc/authorization_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              Text(
                'ATHLETIC-HUB ',
                style: GoogleFonts.montserrat(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  height: 1.2175,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              BlocBuilder<AuthorizationBloc, AuthorizationState>(
                builder: (context, state) {
                  return switch (state) {
                    final AuthorizationInitial _ => TextButton(
                        onPressed: () {
                          context.go('/registration');
                        },
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
                        onPressed: () {
                          context.go('/registration');
                        },
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
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const RegistrationPage();
                          }));
                        },
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
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const RegistrationPage();
                          }));
                        },
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.w),
          child: Row(
            children: [
              const Expanded(
                child: EventList(),
              ),
              SizedBox(
                width: 100.w,
              ),
              const FilterWidget(
                filters: [
                  FilterBlocModel(
                    id: "123e",
                    title: "Виды спорта",
                    filters: [
                      FilterModel(filterId: "1", filter: "Волейбол"),
                      FilterModel(filterId: "2", filter: "Футбол"),
                      FilterModel(filterId: "3", filter: "Теннис"),
                      FilterModel(filterId: "4", filter: "Водное поло"),
                    ],
                  ),
                  FilterBlocModel(
                    id: "123e",
                    title: "Время года",
                    filters: [
                      FilterModel(filterId: "1", filter: "Зима"),
                      FilterModel(filterId: "2", filter: "Лето"),
                      FilterModel(filterId: "3", filter: "Осень"),
                      FilterModel(filterId: "4", filter: "Весна"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) async {
    await showMenu(
      context: context,
      color: Colors.green[49],
      position: const RelativeRect.fromLTRB(550, 100, 100, 0),
      items: [
        PopupMenuItem(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const EventCreatPage();
            }));
          },
          value: 1,
          child: Text('Создать мероприятие',
              style: GoogleFonts.montserrat(
                color: const Color(0xff000000),
                fontSize: 18,
              )),
        ),
        PopupMenuItem(
          onTap: () {
            context.read<AuthorizationBloc>().add(EnterEvent());
          },
          value: 2,
          child: Text('Выйти',
              style: GoogleFonts.montserrat(
                color: const Color(0xff000000),
                fontSize: 18,
              )),
        ),
      ],
      elevation: 8.0,
    ).then((value) {});
  }
}

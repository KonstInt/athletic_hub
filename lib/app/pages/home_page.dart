import 'package:athletic_hub/app/feature/events/presentation/event_card.dart';
import 'package:athletic_hub/app/feature/events/data/api/service/api_remote_event_service.dart';
import 'package:flutter/material.dart';

import '../feature/events/presentation/event_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: const Size.fromHeight(150.0),
          child:Container(
            padding:  const EdgeInsets.fromLTRB(165, 25, 165, 25),
            width:  double.infinity,
            decoration:  const BoxDecoration (
              color:  Color(0xffa5fddd),
              boxShadow:  [
                BoxShadow(
                  color:  Color(0x3f000000),
                  offset:  Offset(0, 5),
                  blurRadius:  5,
                ),
              ],
            ),
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'ATHLETIC-HUB ',
                  style: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 36,
                    fontWeight: FontWeight.w500,
                    height: 1.2175,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(width: 1195,),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                  child: TextButton(
                    onPressed: () {

                    },
                    child: const Text(
                      'войти',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.2175,
                        color: Color(0xff1f2029),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: EventList())

    ) ;
  }
}
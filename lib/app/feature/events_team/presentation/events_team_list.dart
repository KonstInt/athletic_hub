import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'info_button_widget.dart';
import '../domain/bloc/event_team_bloc.dart';
import '../domain/models/event_team_model.dart';

class JoinTeamList extends StatefulWidget {
  final String eventId;

  const JoinTeamList({super.key, required this.eventId});

  @override
  _JoinTeamListState createState() => _JoinTeamListState();
}

class _JoinTeamListState extends State<JoinTeamList> {
  late List<EventTeamModel> teamList;
  int? selectedTeamIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventTeamBloc, EventTeamState>(
        builder: (context, state) => state.map(
              initial: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              },
              loading: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              },
              loaded: (value) {
                teamList = value.teamList;
                return Container(
                  width: 230.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: buildTeamSelectionWidget(),
                );
              },
              error: (value) {
                return CircularProgressIndicator(
                  color: context.colors.green,
                );
              },
            ));
  }

  Widget buildTeamSelectionWidget() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: teamList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      teamList[index].name,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0.sp,
                        color: const Color(0xFF367EEA),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        InfoButton(
                          members: teamList[index].members,
                        ),
                        
                        Expanded(
                          child: Text(
                            '${teamList[index].members.length}/${teamList[index].capacity}',
                            style: GoogleFonts.montserrat(
                              fontSize: 14.0.sp,
                              color: context.colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      
                        CustomRadio(
                          value: index,
                          groupValue: selectedTeamIndex,
                          onChanged: (value) {
                            setState(() {
                              selectedTeamIndex = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Container(
          width: 160,
          height: 45.65,
          decoration: BoxDecoration(
            color: const Color(0xFFA5FDDD),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              if (selectedTeamIndex != null) {
                if (teamList[selectedTeamIndex!].members.length <
                    teamList[selectedTeamIndex!].capacity) {
                  teamList[selectedTeamIndex!].members.add('User');
                  setState(() {});
                }
              } else {}
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            child: Text(
              'участвую',
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: context.colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRadio extends StatefulWidget {
  final int value;
  final int? groupValue;
  final void Function(int) onChanged;
  const CustomRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xFFF5F5F5)),
        child: Icon(
          Icons.circle,
          size: 10.sp,
          color: selected ? const Color(0xFFA5FDDD) : const Color(0xFFF5F5F5),
        ),
      ),
    );
  }
}
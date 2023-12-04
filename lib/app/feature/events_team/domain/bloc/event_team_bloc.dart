import 'package:athletic_hub/app/feature/events_team/domain/models/event_team_model.dart';
import 'package:athletic_hub/app/feature/events_team/domain/repository/event_team_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_team_event.dart';
part 'event_team_state.dart';
part 'event_team_bloc.freezed.dart';

@injectable
class EventTeamBloc extends Bloc<EventTeamEvent, EventTeamState> {
  EventTeamRepository repository;
  EventTeamBloc(this.repository) : super(const _Initial()) {
    on<EventTeamEvent>((event, emit) {
      event.map(
          started: (event) => start(event, emit),
          loadTeams: (event) => load(event, emit));
    });
  }

  Future<void> load(_LoadTeams event, Emitter<EventTeamState> emit) async {
    emit(const EventTeamState.loading());
    try {
      final teamsList = await repository.getEventTeams(idEvent: event.eventId);
      emit(EventTeamState.loaded(teamsList));
    } catch (e) {
      emit(EventTeamState.error(e.toString()));
    }
  }

  start(_Started event, Emitter<EventTeamState> emit) {}
}

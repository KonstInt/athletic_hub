// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/service/remote/dio/dio_remote_service.dart' as _i3;
import '../../feature/events/data/api/service/api_remote_event_service.dart'
    as _i6;
import '../../feature/events/data/mapper/event_mapper.dart' as _i4;
import '../../feature/events/data/repository/remote_event_repository.dart'
    as _i11;
import '../../feature/events/data/util/remote_event_util.dart' as _i9;
import '../../feature/events/domain/event_bloc/event_list_bloc.dart' as _i14;
import '../../feature/events/domain/repository/event_repository.dart' as _i10;
import '../../feature/events_team/data/api/service/api_remote_event_team_service.dart'
    as _i7;
import '../../feature/events_team/data/mapper/event_team_mapper.dart' as _i5;
import '../../feature/events_team/data/repository/remote_event_team_repository.dart'
    as _i13;
import '../../feature/events_team/data/util/event_team_util.dart' as _i8;
import '../../feature/events_team/domain/bloc/event_team_bloc.dart' as _i15;
import '../../feature/events_team/domain/repository/event_team_repository.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.DioRemoteService>(_i3.DioRemoteService());
    gh.singleton<_i4.EventMapper>(_i4.EventMapper());
    gh.singleton<_i5.EventTeamMapper>(_i5.EventTeamMapper());
    gh.singleton<_i6.ApiRemoteEventService>(
        _i6.ApiRemoteEventService(gh<_i3.DioRemoteService>()));
    gh.singleton<_i7.ApiRemoteEventTeamService>(
        _i7.ApiRemoteEventTeamService(gh<_i3.DioRemoteService>()));
    gh.singleton<_i8.EventTeamUtil>(_i8.EventTeamUtil(
      gh<_i7.ApiRemoteEventTeamService>(),
      gh<_i5.EventTeamMapper>(),
    ));
    gh.singleton<_i9.RemoteEventUtil>(_i9.RemoteEventUtil(
      gh<_i6.ApiRemoteEventService>(),
      gh<_i4.EventMapper>(),
    ));
    gh.singleton<_i10.EventRepository>(
        _i11.RemoteEventRepository(gh<_i9.RemoteEventUtil>()));
    gh.singleton<_i12.EventTeamRepository>(
        _i13.RemoteEventTeamRepository(gh<_i8.EventTeamUtil>()));
    gh.factory<_i14.EventListBloc>(
        () => _i14.EventListBloc(gh<_i10.EventRepository>()));
    gh.factory<_i15.EventTeamBloc>(
        () => _i15.EventTeamBloc(gh<_i12.EventTeamRepository>()));
    return this;
  }
}

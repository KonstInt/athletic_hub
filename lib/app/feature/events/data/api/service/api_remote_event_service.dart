import 'package:athletic_hub/app/common/service/remote/dio/dio_remote_service.dart';
import 'package:athletic_hub/app/feature/events/data/api/models/api_event_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiRemoteEventService{
  DioRemoteService dioRemoteService;
  ApiRemoteEventService(this.dioRemoteService);

  final List<ApiEventModel> Events =[
    const ApiEventModel(
      id: '1',
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath: 'image_path_1.jpg',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),
    const ApiEventModel(
      id: '2',
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath: 'image_path_1.jpg',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),
    const ApiEventModel(
      id: '3',
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath: 'image_path_1.jpg',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),


  ];

  Future<List<ApiEventModel>> getEvents() async {
    return Events;
  }
}
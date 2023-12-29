import 'package:athletic_hub/app/common/service/remote/dio/dio_remote_service.dart';
import 'package:athletic_hub/app/feature/events/data/api/models/api_event_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiRemoteEventService {
  DioRemoteService dioRemoteService;
  ApiRemoteEventService(this.dioRemoteService);

  final List<ApiEventModel> Events = [
    const ApiEventModel(
      id: "1",
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath:
          'https://masterpiecer-images.s3.yandex.net/578a963b594a11ee927d363fac71b015:upscaled',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),
    const ApiEventModel(
      id:" 2",
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath:
          'https://masterpiecer-images.s3.yandex.net/578a963b594a11ee927d363fac71b015:upscaled',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),
    const ApiEventModel(
      id: "3",
      idCreator: 'creator1',
      title: 'Event 1',
      imagePath:
          'https://masterpiecer-images.s3.yandex.net/578a963b594a11ee927d363fac71b015:upscaled',
      text: 'Description for Event 1',
      placeUrl: 'place_url_1',
      time: '1974-03-20 00:00:00.000',
      tags: ['tag1', 'tag2'],
    ),
  ];

  Future<List<ApiEventModel>> getEvents() async {
    try {
      final List<ApiEventModel> returnValue = [];
      final result = await dioRemoteService.dio.get('https://athletichub.onrender.com/events');
      for (var x in result.data) {
        returnValue.add(_fromJson(x));
      }
      return returnValue;
    } catch (e) {
      rethrow;
    }
  }

  ApiEventModel _fromJson(Map<String,dynamic> json) {
    return ApiEventModel(
        id: json['id'].toString(),
      idCreator: json['user_id']??'id',
      title: json['title']??'title' ,
      imagePath: json['imagePath']??'path' ,
      text: json['text']??'text' ,
      placeUrl: json['placeUrl']??'url',
      time: json['time']??'',
      tags: (json['tags'] ?? <String>['tag']).map<String>((e) => e as String).toList(),);
  }
}

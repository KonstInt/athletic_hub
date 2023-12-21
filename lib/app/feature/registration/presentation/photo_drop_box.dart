import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:typed_data';

class PhotoDropBox extends StatefulWidget {
  @override
  _PhotoDropBoxState createState() => _PhotoDropBoxState();
}

class _PhotoDropBoxState extends State<PhotoDropBox> {
  late DropzoneViewController controller1;
  String message1 = 'Drop something here';
  bool highlighted1 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider(
        create: (context) => PhotoProvider(),
        child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(10),
              ),
          width: 244,
          height: 272,
          child: Consumer<PhotoProvider>(
                builder: (context, photoProvider, _) {
                  final Uint8List? photo = photoProvider.photo;
                  return photo == null
                      ? Stack(
                    children: [
                        buildZone1(context),
                        const Center(child: Icon(Icons.image_outlined)),
                    ],
                  )
                      : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: MemoryImage(photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
      ),
    );
  }

  Widget buildZone1(BuildContext context) => Builder(
    builder: (context) => DropzoneView(
      operation: DragOperation.copy,
      cursor: CursorType.grab,
      onCreated: (ctrl) => controller1 = ctrl,
      onLoaded: () => print('Zone 1 loaded'),
      onError: (ev) => print('Zone 1 error: $ev'),
      onHover: () {
        setState(() => highlighted1 = true);
        print('Zone 1 hovered');
      },
      onLeave: () {
        setState(() => highlighted1 = false);
        print('Zone 1 left');
      },
      onDrop: (ev) async {
        print('Zone 1 drop: ${ev.name}');
        final bytes = await controller1.getFileData(ev);


        final photoProvider = Provider.of<PhotoProvider>(context, listen: false);
        photoProvider.setPhoto(bytes);
      },
      onDropInvalid: (ev) => print('Zone 1 invalid MIME: $ev'),
      onDropMultiple: (ev) async {
        print('Zone 1 drop multiple: $ev');
        final bytes = await controller1.getFileData(ev);


        final photoProvider = Provider.of<PhotoProvider>(context, listen: false);
        photoProvider.setPhoto(bytes);
      },
    ),
  );
}

class PhotoProvider with ChangeNotifier {
  Uint8List? _photo;
  Uint8List? get photo => _photo;

  void setPhoto(Uint8List photo) {
    _photo = photo;
    notifyListeners();
  }
}

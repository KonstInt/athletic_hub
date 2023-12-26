import 'dart:convert';
import 'dart:typed_data';

import 'package:athletic_hub/app/feature/event_create/presentation/photo_bloc/photobloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class PhotoDropBox extends StatefulWidget {
  @override
  _PhotoDropBoxState createState() => _PhotoDropBoxState();
}

class _PhotoDropBoxState extends State<PhotoDropBox> {
  String photoS = '';
  late DropzoneViewController controller1;
  String message1 = 'Drop something here';
  bool highlighted1 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          return switch (state) {
            final PhotoInitial _ => const Center(
                child: CircularProgressIndicator(),
              ),
            final PhotoRead _ => Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 274,
                height: 350,
                child: Stack(
                  children: [
                    buildZone1(context),
                    const Center(child: Icon(Icons.image_outlined)),
                  ],
                ),
              ),
            final PhotoSuccess state => Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 274,
                height: 350,
                child: Stack(
                  children: [
                    buildZone1(context),
                    Positioned.fill(
                      child: Image.memory(
                        state.photo,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
          };
        },
      ),
    );
  }

  String uint8ListToString(Uint8List data) {
    return base64Encode(data);
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
            photoS = uint8ListToString(bytes);
            context.read<PhotoBloc>().add(SetPhoto(bytes));
          },
          onDropInvalid: (ev) => print('Zone 1 invalid MIME: $ev'),
          onDropMultiple: (ev) async {
            print('Zone 1 drop multiple: $ev');
            final bytes = await controller1.getFileData(ev);

            final photoBloc = BlocProvider.of<PhotoBloc>(context);
            photoBloc.add(SetPhoto(bytes));
          },
        ),
      );
}

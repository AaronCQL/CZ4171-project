import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

enum UserState {
  fresh, // just started the app
  recording, // recording audio
  ready, // recorded, waiting for next instruction
  playing, // playing recorded audio
  transcribing, // transcribing audio
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserState state = UserState.fresh;
  String transcribedText = "";
  FlutterSoundRecorder recorder = FlutterSoundRecorder();
  FlutterSoundPlayer player = FlutterSoundPlayer();

  @override
  void initState() {
    super.initState();
    recorder.openAudioSession();
    player.openAudioSession();
  }

  @override
  void dispose() {
    recorder.closeAudioSession();
    recorder = null;
    player.closeAudioSession();
    player = null;
    super.dispose();
  }

  Future<bool> hasMicrophonePermission() async {
    if (await Permission.microphone.isGranted ||
        (await Permission.microphone.request() == PermissionStatus.granted)) {
      return true;
    }
    return false;
  }

  Future<String> getFilePath() async {
    Directory tempDir = await getTemporaryDirectory();
    Directory dir = Directory("${tempDir.path}/recordings");
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
    return "${dir.path}/audio.ogg";
  }

  Future<void> startRecording() async {
    if (!await hasMicrophonePermission()) {
      // TODO: handle errors
      print("No mic permission!");
      return;
    }

    String path = await getFilePath();
    setState(() {
      state = UserState.recording;
    });
    await recorder.startRecorder(
      toFile: path,
      codec: Codec.amrWB,
    );
  }

  Future<void> stopRecording() async {
    await recorder.stopRecorder();
    setState(() {
      state = UserState.ready;
    });
  }

  Future<void> playRecording() async {
    String path = await getFilePath();
    setState(() {
      state = UserState.playing;
    });
    await player.startPlayer(
      fromURI: path,
      codec: Codec.amrWB,
      whenFinished: () {
        setState(() {
          state = UserState.ready;
        });
      },
    );
  }

  void transcribeRecording() async {
    setState(() {
      state = UserState.transcribing;
    });

    File audioFile = File(await getFilePath());
    var content = await audioFile.readAsBytes();
    String base64audio = base64Encode(content);

    http.Response res = await http.post(
      Uri.https("us-central1-cz4171-project.cloudfunctions.net", "transcribe"),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({"base64audio": base64audio}),
    );

    if (res.statusCode != 200) {
      // TODO: handle errors
      print("error status code");
      return;
    }

    final Map<String, dynamic> resBody = jsonDecode(res.body);
    setState(() {
      transcribedText = resBody["transcription"];
      state = UserState.ready;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CZ4171 App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(4),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "TRANSCRIBED TEXT",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Divider(),
                      Text(
                        transcribedText,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // background
                            elevation: 0,
                          ),
                          onPressed:
                              state == UserState.ready ? playRecording : null,
                          child: Text("Play"),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red, // background
                            elevation: 0,
                          ),
                          onPressed: state == UserState.playing ||
                                  state == UserState.transcribing
                              ? null
                              : state == UserState.recording
                                  ? stopRecording
                                  : startRecording,
                          child: Text(
                              state == UserState.recording ? "Stop" : "Record"),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // background
                            elevation: 0,
                          ),
                          onPressed: state == UserState.ready
                              ? transcribeRecording
                              : null,
                          child: Text("Transcribe"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

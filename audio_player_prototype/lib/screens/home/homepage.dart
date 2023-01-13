import 'package:audio_player_prototype/constants.dart';
import 'package:audio_player_prototype/utils/format_utils.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _audioPlayer = AudioPlayer();
  var _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    /// List to states:
    _audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });

    _audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        _duration = d;
      });
    });

    _audioPlayer.onPositionChanged.listen((Duration d) {
      setState(() {
        _position = d;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                /// Title
                ///
                Text("Flutter Song"),

                Slider(
                  min: 0,
                  max: _duration.inSeconds.toDouble(),
                  value: _position.inSeconds.toDouble(),
                  onChanged: (value) async {},
                ),

                /// Current Duration and Total Duration
                ///
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatTime(_position)),
                    Text(formatTime(_duration - _position)),
                  ],
                ),

                /// Play & Pause Button
                ///
                CircleAvatar(
                  radius: 35,
                  child: IconButton(
                    onPressed: () async {
                      if (_isPlaying) {
                        await _audioPlayer.pause();
                      } else {
                        await _audioPlayer.play(
                          AssetSource(Constant.testAudioPath),
                        );
                      }
                    },
                    icon: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow_rounded),
                    iconSize: 50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

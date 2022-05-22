import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerScreen extends StatefulWidget {
  final String? yotube_url;
  YoutubePlayerScreen({Key? key, this.yotube_url}) : super(key: key);

  @override
  State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;
  late OrientationBuilder _controllerOrientation;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.yotube_url!)!,
        params: YoutubePlayerParams(
          mute: true,
          loop: false,
          color: 'transparent',
          desktopMode: true,
          playsInline: true,
          showFullscreenButton: kIsWeb ? true : true,
          autoPlay: true,
          strictRelatedVideos: true,
        ));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return Container(
      // height: kIsWeb ? size.height / 1.13 : size.height * .40,
      // width: size.width,

      height: orientation.toString() == 'Orientation.portrait'
          ? kIsWeb
              ? size.height / 1.13
              : size.height * 0.30
          : size.height * 0.8,
      width: size.width,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: YoutubePlayerIFrame(
          controller: _controller,
        ),
      ),
    );
  }
}

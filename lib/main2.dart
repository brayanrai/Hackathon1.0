import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowVideoPlayer(
                path: 'assets/videos/20221204_031944.mp4',
                videoType: VideoType.asset,
                width: MediaQuery.of(context).size.width,
                autoPlay: true,
                looping: true,
                showControls: false,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
                lazyLoad: false,
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed(
                    'third',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 500),
                      ),
                    },
                  );
                },
                child: Image.asset(
                  'assets/images/camera-shutter.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

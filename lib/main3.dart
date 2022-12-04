import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({Key? key}) : super(key: key);

  @override
  _ThirdWidgetState createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
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
              InkWell(
                onTap: () async {
                  context.pushNamed(
                    'fourth',
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
                  'assets/images/9hsjc_2.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

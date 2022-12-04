import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthWidget extends StatefulWidget {
  const FourthWidget({Key? key}) : super(key: key);

  @override
  _FourthWidgetState createState() => _FourthWidgetState();
}

class _FourthWidgetState extends State<FourthWidget> {
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
                  await launchURL(
                      'https://en.wikipedia.org/wiki/Methylparaben');
                },
                child: Image.asset(
                  'assets/images/albfo_3.png',
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

import '/flutter_flow/flutter_flow_util.dart';
import 'jeddah_standerd_widget.dart' show JeddahStanderdWidget;
import 'package:flutter/material.dart';

class JeddahStanderdModel extends FlutterFlowModel<JeddahStanderdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

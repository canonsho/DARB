import '/flutter_flow/flutter_flow_util.dart';
import 'dammam_standerd_widget.dart' show DammamStanderdWidget;
import 'package:flutter/material.dart';

class DammamStanderdModel extends FlutterFlowModel<DammamStanderdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

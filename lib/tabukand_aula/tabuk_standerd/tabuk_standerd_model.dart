import '/flutter_flow/flutter_flow_util.dart';
import 'tabuk_standerd_widget.dart' show TabukStanderdWidget;
import 'package:flutter/material.dart';

class TabukStanderdModel extends FlutterFlowModel<TabukStanderdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

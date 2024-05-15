import '/flutter_flow/flutter_flow_util.dart';
import 'taif_standerd_widget.dart' show TaifStanderdWidget;
import 'package:flutter/material.dart';

class TaifStanderdModel extends FlutterFlowModel<TaifStanderdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

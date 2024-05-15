import '/flutter_flow/flutter_flow_util.dart';
import 'choose_budget_widget.dart' show ChooseBudgetWidget;
import 'package:flutter/material.dart';

class ChooseBudgetModel extends FlutterFlowModel<ChooseBudgetWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

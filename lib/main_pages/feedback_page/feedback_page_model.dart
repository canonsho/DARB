import '/flutter_flow/flutter_flow_util.dart';
import 'feedback_page_widget.dart' show FeedbackPageWidget;
import 'package:flutter/material.dart';

class FeedbackPageModel extends FlutterFlowModel<FeedbackPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for feedbackText widget.
  FocusNode? feedbackTextFocusNode;
  TextEditingController? feedbackTextTextController;
  String? Function(BuildContext, String?)? feedbackTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    feedbackTextFocusNode?.dispose();
    feedbackTextTextController?.dispose();
  }
}

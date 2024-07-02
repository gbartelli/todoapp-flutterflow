import '/flutter_flow/flutter_flow_util.dart';
import 'define_display_name_widget.dart' show DefineDisplayNameWidget;
import 'package:flutter/material.dart';

class DefineDisplayNameModel extends FlutterFlowModel<DefineDisplayNameWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();
  }
}

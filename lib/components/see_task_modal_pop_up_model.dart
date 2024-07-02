import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'see_task_modal_pop_up_widget.dart' show SeeTaskModalPopUpWidget;
import 'package:flutter/material.dart';

class SeeTaskModalPopUpModel extends FlutterFlowModel<SeeTaskModalPopUpWidget> {
  ///  Local state fields for this component.

  String? statusNew;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

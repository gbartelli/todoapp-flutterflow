import '/flutter_flow/flutter_flow_util.dart';
import 'update_profile_pic_widget.dart' show UpdateProfilePicWidget;
import 'package:flutter/material.dart';

class UpdateProfilePicModel extends FlutterFlowModel<UpdateProfilePicWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

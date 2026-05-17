import '/components/syllabus_module_child_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'syllabus_module_widget.dart' show SyllabusModuleWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SyllabusModuleModel extends FlutterFlowModel<SyllabusModuleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SyllabusModuleChild component.
  late SyllabusModuleChildModel syllabusModuleChildModel;

  @override
  void initState(BuildContext context) {
    syllabusModuleChildModel =
        createModel(context, () => SyllabusModuleChildModel());
  }

  @override
  void dispose() {
    syllabusModuleChildModel.dispose();
  }
}

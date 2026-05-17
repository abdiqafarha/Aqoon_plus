import '/backend/supabase/supabase.dart';
import '/components/category_chip2_widget.dart';
import '/components/course_card2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'course_catalog_widget.dart' show CourseCatalogWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourseCatalogModel extends FlutterFlowModel<CourseCatalogWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model1;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model2;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model3;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model4;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model5;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model6;

  @override
  void initState(BuildContext context) {
    categoryChip2Model1 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model2 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model3 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model4 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model5 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model6 = createModel(context, () => CategoryChip2Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryChip2Model1.dispose();
    categoryChip2Model2.dispose();
    categoryChip2Model3.dispose();
    categoryChip2Model4.dispose();
    categoryChip2Model5.dispose();
    categoryChip2Model6.dispose();
  }
}

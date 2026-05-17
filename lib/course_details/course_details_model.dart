import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/review_card_widget.dart';
import '/components/syllabus_module_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'course_details_widget.dart' show CourseDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourseDetailsModel extends FlutterFlowModel<CourseDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ReviewCard.
  late ReviewCardModel reviewCardModel1;
  // Model for ReviewCard.
  late ReviewCardModel reviewCardModel2;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    reviewCardModel1 = createModel(context, () => ReviewCardModel());
    reviewCardModel2 = createModel(context, () => ReviewCardModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    reviewCardModel1.dispose();
    reviewCardModel2.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}

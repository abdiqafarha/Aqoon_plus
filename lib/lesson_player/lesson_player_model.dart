import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/lesson_item_widget.dart';
import '/components/tab_group_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'lesson_player_widget.dart' show LessonPlayerWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LessonPlayerModel extends FlutterFlowModel<LessonPlayerWidget> {
  ///  Local state fields for this page.

  LessonsRow? lessonDoc;

  ///  State fields for stateful widgets in this page.

  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    tabGroupModel = createModel(context, () => TabGroupModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabGroupModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}

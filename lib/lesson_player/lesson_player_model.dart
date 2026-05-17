import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/lesson_item_widget.dart';
import '/components/note_card2_widget.dart';
import '/components/resource_card_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
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

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for NoteCard.
  late NoteCard2Model noteCardModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for ResourceCard.
  late ResourceCardModel resourceCardModel1;
  // Model for ResourceCard.
  late ResourceCardModel resourceCardModel2;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    noteCardModel = createModel(context, () => NoteCard2Model());
    buttonModel1 = createModel(context, () => ButtonModel());
    resourceCardModel1 = createModel(context, () => ResourceCardModel());
    resourceCardModel2 = createModel(context, () => ResourceCardModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    noteCardModel.dispose();
    buttonModel1.dispose();
    resourceCardModel1.dispose();
    resourceCardModel2.dispose();
    buttonModel2.dispose();
  }
}

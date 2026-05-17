import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/course_progress_card_widget.dart';
import '/components/deadline_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_learning_dashboard_widget.dart' show MyLearningDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyLearningDashboardModel
    extends FlutterFlowModel<MyLearningDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DeadlineItem.
  late DeadlineItemModel deadlineItemModel;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    deadlineItemModel = createModel(context, () => DeadlineItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    deadlineItemModel.dispose();
    buttonModel.dispose();
  }
}

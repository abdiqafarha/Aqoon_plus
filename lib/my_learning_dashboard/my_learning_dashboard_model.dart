import '/components/button_widget.dart';
import '/components/course_progress_card_widget.dart';
import '/components/deadline_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'my_learning_dashboard_widget.dart' show MyLearningDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyLearningDashboardModel
    extends FlutterFlowModel<MyLearningDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CourseProgressCard.
  late CourseProgressCardModel courseProgressCardModel1;
  // Model for CourseProgressCard.
  late CourseProgressCardModel courseProgressCardModel2;
  // Model for DeadlineItem.
  late DeadlineItemModel deadlineItemModel1;
  // Model for DeadlineItem.
  late DeadlineItemModel deadlineItemModel2;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    courseProgressCardModel1 =
        createModel(context, () => CourseProgressCardModel());
    courseProgressCardModel2 =
        createModel(context, () => CourseProgressCardModel());
    deadlineItemModel1 = createModel(context, () => DeadlineItemModel());
    deadlineItemModel2 = createModel(context, () => DeadlineItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    courseProgressCardModel1.dispose();
    courseProgressCardModel2.dispose();
    deadlineItemModel1.dispose();
    deadlineItemModel2.dispose();
    buttonModel.dispose();
  }
}

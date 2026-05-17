import '/components/button_widget.dart';
import '/components/course_progress_card_widget.dart';
import '/components/deadline_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_learning_dashboard_model.dart';
export 'my_learning_dashboard_model.dart';

class MyLearningDashboardWidget extends StatefulWidget {
  const MyLearningDashboardWidget({super.key});

  static String routeName = 'MyLearningDashboard';
  static String routePath = '/myLearningDashboard';

  @override
  State<MyLearningDashboardWidget> createState() =>
      _MyLearningDashboardWidgetState();
}

class _MyLearningDashboardWidgetState extends State<MyLearningDashboardWidget> {
  late MyLearningDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyLearningDashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(18.0, 26.0, 18.0, 26.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Learning',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Text(
                                '3 courses in progress',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'AR',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).onPrimary,
                                    fontSize: 15.2,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                    lineHeight: 1.2,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(26.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Continue Learning',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                wrapWithModel(
                                  model: _model.courseProgressCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CourseProgressCardWidget(
                                    category: 'Design',
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/minimalist%20swiss%20style%20poster',
                                    progress: '65',
                                    progressDec: 0.65,
                                    title: 'Advanced Typography & Grid Systems',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.courseProgressCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CourseProgressCardWidget(
                                    category: 'Development',
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/abstract%20code%20lines%20on%20dark%20background',
                                    progress: '22',
                                    progressDec: 0.22,
                                    title: 'Backend Architecture with Node.js',
                                  ),
                                ),
                              ].divide(SizedBox(height: 18.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Upcoming Deadlines',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      'View Calendar',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                            lineHeight: 1.2,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.deadlineItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DeadlineItemWidget(
                                        course: 'Advanced Typography',
                                        day: '14',
                                        month: 'OCT',
                                        task: 'Final Project Submission',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.deadlineItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DeadlineItemWidget(
                                        course: 'Backend Architecture',
                                        day: '18',
                                        month: 'OCT',
                                        task: 'Midterm Quiz',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 9.0)),
                                ),
                              ].divide(SizedBox(height: 18.0)),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(26.0),
                                  child: Container(
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ready for a challenge?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onPrimary,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                            Text(
                                              'Take the weekly design quiz to earn 50 bonus points.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onPrimary70,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                            wrapWithModel(
                                              model: _model.buttonModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ButtonWidget(
                                                content: 'Start Quiz',
                                                iconPresent: false,
                                                iconEndPresent: false,
                                                variant: 'secondary',
                                                size: 'small',
                                                fullWidth: false,
                                                loading: false,
                                                disabled: false,
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 9.0)),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.2, 0.0),
                                          child: Icon(
                                            Icons.psychology_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .onPrimary10,
                                            size: 80.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 26.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

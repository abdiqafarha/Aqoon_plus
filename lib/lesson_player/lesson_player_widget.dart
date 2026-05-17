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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lesson_player_model.dart';
export 'lesson_player_model.dart';

class LessonPlayerWidget extends StatefulWidget {
  const LessonPlayerWidget({
    super.key,
    required this.lessonDoc,
    required this.sectionTitle,
    required this.sectionIndex,
  });

  final LessonsRow? lessonDoc;
  final String? sectionTitle;
  final String? sectionIndex;

  static String routeName = 'LessonPlayer';
  static String routePath = '/lessonPlayer';

  @override
  State<LessonPlayerWidget> createState() => _LessonPlayerWidgetState();
}

class _LessonPlayerWidgetState extends State<LessonPlayerWidget> {
  late LessonPlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LessonPlayerModel());
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
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 85.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 5.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  valueOrDefault<String>(
                                    widget!.lessonDoc?.title,
                                    ' Lesson 1',
                                  ),
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget!.sectionTitle,
                                    'Section 1',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                        decoration: TextDecoration.underline,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.check,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
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
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(
                  aspectRatio: 1.77,
                  child: ClipRRect(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        shape: BoxShape.rectangle,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        children: [
                          FlutterFlowVideoPlayer(
                            path: valueOrDefault<String>(
                              widget!.lessonDoc?.videoUrl,
                              'https://assets.mixkit.co/videos/529/529-720.mp4',
                            ),
                            videoType: VideoType.network,
                            width: double.infinity,
                            autoPlay: false,
                            looping: true,
                            showControls: true,
                            allowFullScreen: true,
                            allowPlaybackSpeedMenu: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            wrapWithModel(
              model: _model.tabGroupModel,
              updateCallback: () => safeSetState(() {}),
              child: TabGroupWidget(
                label1: 'Course Content',
                label2: 'Notes',
                label2Present: true,
                label3: 'Resources',
                label3Present: true,
                label4: '',
                label4Present: false,
                label5: '',
                label5Present: false,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
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
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.sectionTitle,
                                      'Section 1',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                  FutureBuilder<List<LessonsRow>>(
                                    future: LessonsTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'section_id',
                                            widget!.lessonDoc?.sectionId,
                                          )
                                          .order('order_index',
                                              ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<LessonsRow> listViewLessonsRowList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewLessonsRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewLessonsRow =
                                              listViewLessonsRowList[
                                                  listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                LessonPlayerWidget.routeName,
                                                queryParameters: {
                                                  'lessonDoc': serializeParam(
                                                    listViewLessonsRow,
                                                    ParamType.SupabaseRow,
                                                  ),
                                                  'sectionTitle':
                                                      serializeParam(
                                                    widget!.sectionTitle,
                                                    ParamType.String,
                                                  ),
                                                  'sectionIndex':
                                                      serializeParam(
                                                    widget!.sectionIndex,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  '__transition_info__':
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: LessonItemWidget(
                                              key: Key(
                                                  'Keygnd_${listViewIndex}_of_${listViewLessonsRowList.length}'),
                                              duration: listViewLessonsRow
                                                  .duration
                                                  ?.toString(),
                                              title: listViewLessonsRow.title,
                                              isActive: widget!.lessonDoc?.id ==
                                                  listViewLessonsRow.id,
                                              isCompleted: false,
                                              sectionId:
                                                  widget!.lessonDoc!.sectionId!,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(SizedBox(height: 9.0)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondarybackground2,
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(26.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Your Notes',
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
                                            Icon(
                                              Icons.open_in_new_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 18.0,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Grid systems in Nordic design prioritize clarity over decoration. Emphasize whitespace to allow elements room to breathe...',
                                          maxLines: 3,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        wrapWithModel(
                                          model: _model.buttonModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonWidget(
                                            content: 'Add New Note',
                                            icon: Icon(
                                              Icons.edit_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16.0,
                                            ),
                                            iconPresent: true,
                                            iconEndPresent: false,
                                            variant: 'outline',
                                            size: 'small',
                                            fullWidth: false,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 18.0)),
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
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(26.0, 18.0, 26.0, 18.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: wrapWithModel(
                              model: _model.buttonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'Next Lesson',
                                iconPresent: false,
                                iconEnd: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: FlutterFlowTheme.of(context).onPrimary,
                                  size: 16.0,
                                ),
                                iconEndPresent: true,
                                variant: 'primary',
                                size: 'medium',
                                fullWidth: true,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                child: Container(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    FFIcons.kasset68,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 18.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

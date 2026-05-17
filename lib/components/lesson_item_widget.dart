import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lesson_item_model.dart';
export 'lesson_item_model.dart';

class LessonItemWidget extends StatefulWidget {
  const LessonItemWidget({
    super.key,
    String? duration,
    String? title,
    bool? isActive,
    bool? isCompleted,
    required this.sectionId,
  })  : this.duration = duration ?? '12:05',
        this.title = title ?? '01. Introduction to Kerning',
        this.isActive = isActive ?? false,
        this.isCompleted = isCompleted ?? true;

  final String duration;
  final String title;
  final bool isActive;
  final bool isCompleted;
  final String? sectionId;

  @override
  State<LessonItemWidget> createState() => _LessonItemWidgetState();
}

class _LessonItemWidgetState extends State<LessonItemWidget> {
  late LessonItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LessonItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: widget!.isActive
                ? FlutterFlowTheme.of(context).secondarybackground2
                : FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 28.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: widget!.isActive
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).surfaceVariant,
                          borderRadius: BorderRadius.circular(9999.0),
                          shape: BoxShape.rectangle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 16.0,
                          height: 16.0,
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              if (widget!.isCompleted ? true : false)
                                Icon(
                                  Icons.check_rounded,
                                  color: widget!.isActive
                                      ? FlutterFlowTheme.of(context).onPrimary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  size: 16.0,
                                ),
                              if (widget!.isCompleted ? false : true)
                                Icon(
                                  Icons.play_arrow_rounded,
                                  color: widget!.isActive
                                      ? FlutterFlowTheme.of(context).onPrimary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  size: 16.0,
                                ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget!.title,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: widget!.isActive
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              widget!.duration,
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                    ].divide(SizedBox(width: 18.0)),
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
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lesson_row_model.dart';
export 'lesson_row_model.dart';

class LessonRowWidget extends StatefulWidget {
  const LessonRowWidget({
    super.key,
    String? duration,
    String? name,
    required this.orderIndex,
  })  : this.duration = duration ?? '15:00',
        this.name = name ?? 'Principles of Minimalist UI';

  final String duration;
  final String name;
  final double? orderIndex;

  @override
  State<LessonRowWidget> createState() => _LessonRowWidgetState();
}

class _LessonRowWidgetState extends State<LessonRowWidget> {
  late LessonRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LessonRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.orderIndex?.toString(),
                  '1',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.openSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
              Icon(
                Icons.play_circle_outline_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 19.0,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  valueOrDefault<String>(
                    widget!.name,
                    'Principles of Minimalist UI',
                  ),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.openSans(
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        lineHeight: 1.5,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${valueOrDefault<String>(
                  widget!.duration,
                  '15:00',
                )} min',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.openSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
            ].divide(SizedBox(width: 9.0)),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
      ],
    );
  }
}

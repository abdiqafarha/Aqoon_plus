import '/components/syllabus_module_child_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'syllabus_module_model.dart';
export 'syllabus_module_model.dart';

class SyllabusModuleWidget extends StatefulWidget {
  const SyllabusModuleWidget({
    super.key,
    String? index,
    String? title,
    required this.sectionId,
  })  : this.index = index ?? '01',
        this.title = title ?? 'Foundations of Clarity';

  final String index;
  final String title;
  final String? sectionId;

  @override
  State<SyllabusModuleWidget> createState() => _SyllabusModuleWidgetState();
}

class _SyllabusModuleWidgetState extends State<SyllabusModuleWidget> {
  late SyllabusModuleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SyllabusModuleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground50,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MODULE ${widget!.index}',
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
                              Text(
                                valueOrDefault<String>(
                                  widget!.title,
                                  'Foundations of Clarity',
                                ),
                                maxLines: 1,
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
                                      color: FlutterFlowTheme.of(context)
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
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ].divide(SizedBox(width: 18.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.syllabusModuleChildModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SyllabusModuleChildWidget(
                        sectionId: widget!.sectionId!,
                        sectionTitle: widget!.title,
                        sectionIndex: widget!.index,
                      ),
                    ),
                  ].divide(SizedBox(height: 9.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

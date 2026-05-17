import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'result_row_model.dart';
export 'result_row_model.dart';

class ResultRowWidget extends StatefulWidget {
  const ResultRowWidget({
    super.key,
    String? label,
    String? value,
  })  : this.label = label ?? 'Transaction ID',
        this.value = value ?? '#TRX-948201';

  final String label;
  final String value;

  @override
  State<ResultRowWidget> createState() => _ResultRowWidgetState();
}

class _ResultRowWidgetState extends State<ResultRowWidget> {
  late ResultRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget!.label,
              'Transaction ID',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.openSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.5,
                ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.value,
            '#TRX-948201',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ].divide(SizedBox(width: 18.0)),
    );
  }
}

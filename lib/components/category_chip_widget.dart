import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_chip_model.dart';
export 'category_chip_model.dart';

class CategoryChipWidget extends StatefulWidget {
  const CategoryChipWidget({
    super.key,
    this.icon,
    String? label,
  }) : this.label = label ?? 'Design';

  final Widget? icon;
  final String label;

  @override
  State<CategoryChipWidget> createState() => _CategoryChipWidgetState();
}

class _CategoryChipWidgetState extends State<CategoryChipWidget> {
  late CategoryChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(26.0, 9.0, 26.0, 9.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget!.icon!,
              Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Design',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.openSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        ),
      ),
    );
  }
}

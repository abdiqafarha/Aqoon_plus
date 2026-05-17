import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_section_header_model.dart';
export 'settings_section_header_model.dart';

class SettingsSectionHeaderWidget extends StatefulWidget {
  const SettingsSectionHeaderWidget({
    super.key,
    String? title,
  }) : this.title = title ?? 'ACCOUNT';

  final String title;

  @override
  State<SettingsSectionHeaderWidget> createState() =>
      _SettingsSectionHeaderWidgetState();
}

class _SettingsSectionHeaderWidgetState
    extends State<SettingsSectionHeaderWidget> {
  late SettingsSectionHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsSectionHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(26.0, 26.0, 26.0, 9.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget!.title,
              'ACCOUNT',
            ),
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ),
      ),
    );
  }
}

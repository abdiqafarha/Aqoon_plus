import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_tile2_model.dart';
export 'settings_tile2_model.dart';

class SettingsTile2Widget extends StatefulWidget {
  const SettingsTile2Widget({
    super.key,
    this.icon,
    String? label,
    String? subtext,
    this.child,
  })  : this.label = label ?? 'Security',
        this.subtext = subtext ?? 'Manage your profile data';

  final Widget? icon;
  final String label;
  final String subtext;
  final Widget Function()? child;

  @override
  State<SettingsTile2Widget> createState() => _SettingsTile2WidgetState();
}

class _SettingsTile2WidgetState extends State<SettingsTile2Widget> {
  late SettingsTile2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsTile2Model());
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
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(26.0, 18.0, 26.0, 18.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondarybackground2,
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: widget!.icon!,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget!.label,
                            'Security',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                                lineHeight: 1.6,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                  Builder(builder: (_) {
                    return widget.child != null
                        ? widget.child!()
                        : SizedBox.shrink();
                  }),
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
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_tile_child8_model.dart';
export 'settings_tile_child8_model.dart';

class SettingsTileChild8Widget extends StatefulWidget {
  const SettingsTileChild8Widget({super.key});

  @override
  State<SettingsTileChild8Widget> createState() =>
      _SettingsTileChild8WidgetState();
}

class _SettingsTileChild8WidgetState extends State<SettingsTileChild8Widget> {
  late SettingsTileChild8Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsTileChild8Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.open_in_new_rounded,
      color: FlutterFlowTheme.of(context).secondaryText,
      size: 18.0,
    );
  }
}

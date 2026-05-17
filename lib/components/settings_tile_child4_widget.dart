import '/components/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_tile_child4_model.dart';
export 'settings_tile_child4_model.dart';

class SettingsTileChild4Widget extends StatefulWidget {
  const SettingsTileChild4Widget({super.key});

  @override
  State<SettingsTileChild4Widget> createState() =>
      _SettingsTileChild4WidgetState();
}

class _SettingsTileChild4WidgetState extends State<SettingsTileChild4Widget> {
  late SettingsTileChild4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsTileChild4Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.switchComponentModel,
      updateCallback: () => safeSetState(() {}),
      child: SwitchComponentWidget(
        label: '',
        labelPresent: false,
        variant: 'iOS',
        active: true,
      ),
    );
  }
}

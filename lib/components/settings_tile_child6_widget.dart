import '/components/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_tile_child6_model.dart';
export 'settings_tile_child6_model.dart';

class SettingsTileChild6Widget extends StatefulWidget {
  const SettingsTileChild6Widget({super.key});

  @override
  State<SettingsTileChild6Widget> createState() =>
      _SettingsTileChild6WidgetState();
}

class _SettingsTileChild6WidgetState extends State<SettingsTileChild6Widget> {
  late SettingsTileChild6Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsTileChild6Model());
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
        active: false,
      ),
    );
  }
}

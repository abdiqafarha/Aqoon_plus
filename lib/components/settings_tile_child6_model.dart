import '/components/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_tile_child6_widget.dart' show SettingsTileChild6Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsTileChild6Model
    extends FlutterFlowModel<SettingsTileChild6Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;

  @override
  void initState(BuildContext context) {
    switchComponentModel = createModel(context, () => SwitchComponentModel());
  }

  @override
  void dispose() {
    switchComponentModel.dispose();
  }
}

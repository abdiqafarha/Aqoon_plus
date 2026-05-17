import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/settings_section_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsSectionHeader.
  late SettingsSectionHeaderModel settingsSectionHeaderModel1;
  // Model for SettingsSectionHeader.
  late SettingsSectionHeaderModel settingsSectionHeaderModel2;
  // State field(s) for DarkSwitch widget.
  bool? darkSwitchValue;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for SettingsSectionHeader.
  late SettingsSectionHeaderModel settingsSectionHeaderModel3;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    settingsSectionHeaderModel1 =
        createModel(context, () => SettingsSectionHeaderModel());
    settingsSectionHeaderModel2 =
        createModel(context, () => SettingsSectionHeaderModel());
    settingsSectionHeaderModel3 =
        createModel(context, () => SettingsSectionHeaderModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    settingsSectionHeaderModel1.dispose();
    settingsSectionHeaderModel2.dispose();
    settingsSectionHeaderModel3.dispose();
    buttonModel.dispose();
  }
}

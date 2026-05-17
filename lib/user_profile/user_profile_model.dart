import '/backend/supabase/supabase.dart';
import '/components/certificate_card_widget.dart';
import '/components/skill_badge_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SkillBadge.
  late SkillBadgeModel skillBadgeModel1;
  // Model for SkillBadge.
  late SkillBadgeModel skillBadgeModel2;
  // Model for SkillBadge.
  late SkillBadgeModel skillBadgeModel3;
  // Model for SkillBadge.
  late SkillBadgeModel skillBadgeModel4;
  // Model for CertificateCard.
  late CertificateCardModel certificateCardModel1;
  // Model for CertificateCard.
  late CertificateCardModel certificateCardModel2;

  @override
  void initState(BuildContext context) {
    skillBadgeModel1 = createModel(context, () => SkillBadgeModel());
    skillBadgeModel2 = createModel(context, () => SkillBadgeModel());
    skillBadgeModel3 = createModel(context, () => SkillBadgeModel());
    skillBadgeModel4 = createModel(context, () => SkillBadgeModel());
    certificateCardModel1 = createModel(context, () => CertificateCardModel());
    certificateCardModel2 = createModel(context, () => CertificateCardModel());
  }

  @override
  void dispose() {
    skillBadgeModel1.dispose();
    skillBadgeModel2.dispose();
    skillBadgeModel3.dispose();
    skillBadgeModel4.dispose();
    certificateCardModel1.dispose();
    certificateCardModel2.dispose();
  }
}

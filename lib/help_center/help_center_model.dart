import '/components/faq_item_widget.dart';
import '/components/support_category_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'help_center_widget.dart' show HelpCenterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpCenterModel extends FlutterFlowModel<HelpCenterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SupportCategoryCard.
  late SupportCategoryCardModel supportCategoryCardModel1;
  // Model for SupportCategoryCard.
  late SupportCategoryCardModel supportCategoryCardModel2;
  // Model for SupportCategoryCard.
  late SupportCategoryCardModel supportCategoryCardModel3;
  // Model for SupportCategoryCard.
  late SupportCategoryCardModel supportCategoryCardModel4;
  // Model for FaqItem.
  late FaqItemModel faqItemModel1;
  // Model for FaqItem.
  late FaqItemModel faqItemModel2;
  // Model for FaqItem.
  late FaqItemModel faqItemModel3;
  // Model for FaqItem.
  late FaqItemModel faqItemModel4;

  @override
  void initState(BuildContext context) {
    supportCategoryCardModel1 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel2 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel3 =
        createModel(context, () => SupportCategoryCardModel());
    supportCategoryCardModel4 =
        createModel(context, () => SupportCategoryCardModel());
    faqItemModel1 = createModel(context, () => FaqItemModel());
    faqItemModel2 = createModel(context, () => FaqItemModel());
    faqItemModel3 = createModel(context, () => FaqItemModel());
    faqItemModel4 = createModel(context, () => FaqItemModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    supportCategoryCardModel1.dispose();
    supportCategoryCardModel2.dispose();
    supportCategoryCardModel3.dispose();
    supportCategoryCardModel4.dispose();
    faqItemModel1.dispose();
    faqItemModel2.dispose();
    faqItemModel3.dispose();
    faqItemModel4.dispose();
  }
}

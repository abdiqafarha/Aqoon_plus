import '/backend/supabase/supabase.dart';
import '/components/button4_widget.dart';
import '/components/result_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'payment_successful_widget.dart' show PaymentSuccessfulWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class PaymentSuccessfulModel extends FlutterFlowModel<PaymentSuccessfulWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ResultRow.
  late ResultRowModel resultRowModel1;
  // Model for ResultRow.
  late ResultRowModel resultRowModel2;
  // Model for ResultRow.
  late ResultRowModel resultRowModel3;
  // Model for ResultRow.
  late ResultRowModel resultRowModel4;
  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    resultRowModel1 = createModel(context, () => ResultRowModel());
    resultRowModel2 = createModel(context, () => ResultRowModel());
    resultRowModel3 = createModel(context, () => ResultRowModel());
    resultRowModel4 = createModel(context, () => ResultRowModel());
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    resultRowModel1.dispose();
    resultRowModel2.dispose();
    resultRowModel3.dispose();
    resultRowModel4.dispose();
    buttonModel.dispose();
  }
}

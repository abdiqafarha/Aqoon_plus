import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'course_progress_card_model.dart';
export 'course_progress_card_model.dart';

class CourseProgressCardWidget extends StatefulWidget {
  const CourseProgressCardWidget({
    super.key,
    String? category,
    String? imgDesc,
    String? progress,
    double? progressDec,
    String? title,
  })  : this.category = category ?? 'Design',
        this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/minimalist%20swiss%20style%20poster',
        this.progress = progress ?? '65',
        this.progressDec = progressDec ?? 0.65,
        this.title = title ?? 'Advanced Typography & Grid Systems';

  final String category;
  final String imgDesc;
  final String progress;
  final double progressDec;
  final String title;

  @override
  State<CourseProgressCardWidget> createState() =>
      _CourseProgressCardWidgetState();
}

class _CourseProgressCardWidgetState extends State<CourseProgressCardWidget> {
  late CourseProgressCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseProgressCardModel());
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
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(26.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        color:
                            FlutterFlowTheme.of(context).secondarybackground2,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 0),
                        fadeOutDuration: Duration(milliseconds: 0),
                        imageUrl: valueOrDefault<String>(
                          widget!.imgDesc,
                          'https://dimg.dreamflow.cloud/v1/image/minimalist%20swiss%20style%20poster',
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ),
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
                            widget!.category,
                            'Design',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                                lineHeight: 1.2,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.title,
                            'Advanced Typography & Grid Systems',
                          ),
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 18.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Progress',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.openSans(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.2,
                            ),
                      ),
                      Text(
                        '${widget!.progress}%',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.2,
                            ),
                      ),
                    ],
                  ),
                  LinearPercentIndicator(
                    percent: valueOrDefault<double>(
                      widget!.progressDec,
                      0.65,
                    ),
                    lineHeight: 4.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).primary,
                    backgroundColor: FlutterFlowTheme.of(context).alternate,
                    barRadius: Radius.circular(2.0),
                    padding: EdgeInsets.zero,
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              wrapWithModel(
                model: _model.buttonModel,
                updateCallback: () => safeSetState(() {}),
                child: ButtonWidget(
                  content: 'Resume Lesson',
                  iconPresent: false,
                  iconEndPresent: false,
                  variant: 'outline',
                  size: 'small',
                  fullWidth: true,
                  loading: false,
                  disabled: false,
                ),
              ),
            ].divide(SizedBox(height: 18.0)),
          ),
        ),
      ),
    );
  }
}

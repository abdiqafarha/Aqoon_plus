import '/backend/supabase/supabase.dart';
import '/components/lesson_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'syllabus_module_child_model.dart';
export 'syllabus_module_child_model.dart';

class SyllabusModuleChildWidget extends StatefulWidget {
  const SyllabusModuleChildWidget({
    super.key,
    required this.sectionId,
    required this.sectionTitle,
    required this.sectionIndex,
  });

  final String? sectionId;
  final String? sectionTitle;
  final String? sectionIndex;

  @override
  State<SyllabusModuleChildWidget> createState() =>
      _SyllabusModuleChildWidgetState();
}

class _SyllabusModuleChildWidgetState extends State<SyllabusModuleChildWidget> {
  late SyllabusModuleChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SyllabusModuleChildModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        FutureBuilder<List<LessonsRow>>(
          future: LessonsTable().queryRows(
            queryFn: (q) => q
                .eqOrNull(
                  'section_id',
                  widget!.sectionId,
                )
                .order('order_index', ascending: true),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<LessonsRow> listViewLessonsRowList = snapshot.data!;

            return ListView.builder(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listViewLessonsRowList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewLessonsRow =
                    listViewLessonsRowList[listViewIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      LessonPlayerWidget.routeName,
                      queryParameters: {
                        'lessonDoc': serializeParam(
                          listViewLessonsRow,
                          ParamType.SupabaseRow,
                        ),
                        'sectionTitle': serializeParam(
                          widget!.sectionTitle,
                          ParamType.String,
                        ),
                        'sectionIndex': serializeParam(
                          widget!.sectionIndex,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: LessonRowWidget(
                    key: Key(
                        'Key8bb_${listViewIndex}_of_${listViewLessonsRowList.length}'),
                    duration: listViewLessonsRow.duration?.toString(),
                    name: listViewLessonsRow.title,
                    orderIndex: listViewLessonsRow.orderIndex!,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

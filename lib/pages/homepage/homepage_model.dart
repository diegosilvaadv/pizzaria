import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController1;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    pizzasalgadaController1.dispose();
    pizzasalgadaController2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

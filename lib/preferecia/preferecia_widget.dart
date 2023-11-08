import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'preferecia_model.dart';
export 'preferecia_model.dart';

class PrefereciaWidget extends StatefulWidget {
  const PrefereciaWidget({super.key});

  @override
  _PrefereciaWidgetState createState() => _PrefereciaWidgetState();
}

class _PrefereciaWidgetState extends State<PrefereciaWidget> {
  late PrefereciaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrefereciaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: true,
          title: Text(
            'Escolha sua Preferencia',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowChoiceChips(
                options: const [
                  ChipData('SDFGDSFDSF'),
                  ChipData('DSFSDFSD'),
                  ChipData('FSDFSDFDS')
                ],
                onChanged: (val) =>
                    setState(() => _model.choiceChipsValue = val?.first),
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  iconSize: 18.0,
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 18.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                chipSpacing: 12.0,
                rowSpacing: 12.0,
                multiselect: false,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsValueController ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                wrapped: true,
              ),
              FlutterFlowCheckboxGroup(
                options: const ['RFGFGF', 'GFGFGF', 'GFGFG'],
                onChanged: (val) =>
                    setState(() => _model.checkboxGroupValues = val),
                controller: _model.checkboxGroupValueController ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
                checkboxBorderColor: FlutterFlowTheme.of(context).secondaryText,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                checkboxBorderRadius: BorderRadius.circular(4.0),
                initialized: _model.checkboxGroupValues != null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

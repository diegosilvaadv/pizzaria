import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'detalhes_produtos_model.dart';
export 'detalhes_produtos_model.dart';

class DetalhesProdutosWidget extends StatefulWidget {
  const DetalhesProdutosWidget({super.key});

  @override
  _DetalhesProdutosWidgetState createState() => _DetalhesProdutosWidgetState();
}

class _DetalhesProdutosWidgetState extends State<DetalhesProdutosWidget> {
  late DetalhesProdutosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesProdutosModel());
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/881/600',
                        width: double.infinity,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.chevron_left_outlined,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'titulo',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.local_grocery_store,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'descricao',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'valor',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF26CB3A),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Container(
                        width: double.infinity,
                        height: 319.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Escolha a sua Preferência',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StreamBuilder<List<PreferenciasRecord>>(
                                      stream: queryPreferenciasRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<PreferenciasRecord>
                                            radioButtonPreferenciasRecordList =
                                            snapshot.data!;
                                        return FlutterFlowRadioButton(
                                          options:
                                              radioButtonPreferenciasRecordList
                                                  .map((e) => e.massas)
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) => setState(() {}),
                                          controller: _model
                                                  .radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 18.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          selectedTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<PreferenciasRecord>>(
                                      stream: queryPreferenciasRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<PreferenciasRecord>
                                            columnPreferenciasRecordList =
                                            snapshot.data!;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              columnPreferenciasRecordList
                                                  .length, (columnIndex) {
                                            final columnPreferenciasRecord =
                                                columnPreferenciasRecordList[
                                                    columnIndex];
                                            return Text(
                                              formatNumber(
                                                columnPreferenciasRecord.valor,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.commaDecimal,
                                                currency: 'R\$',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

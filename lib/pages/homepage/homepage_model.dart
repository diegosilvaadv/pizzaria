import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController1;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController2;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController3;

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ProdutosRecord>?
      listViewPagingController1;
  Query? listViewPagingQuery1;
  List<StreamSubscription?> listViewStreamSubscriptions1 = [];

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController4;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController5;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController6;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController7;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    pizzasalgadaController1.dispose();
    pizzasalgadaController2.dispose();
    pizzasalgadaController3.dispose();
    for (var s in listViewStreamSubscriptions1) {
      s?.cancel();
    }
    listViewPagingController1?.dispose();

    pizzasalgadaController4.dispose();
    pizzasalgadaController5.dispose();
    pizzasalgadaController6.dispose();
    pizzasalgadaController7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, ProdutosRecord> setListViewController1(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController1 ??= _createListViewController1(query, parent);
    if (listViewPagingQuery1 != query) {
      listViewPagingQuery1 = query;
      listViewPagingController1?.refresh();
    }
    return listViewPagingController1!;
  }

  PagingController<DocumentSnapshot?, ProdutosRecord>
      _createListViewController1(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ProdutosRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryProdutosRecordPage(
          queryBuilder: (_) => listViewPagingQuery1 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions1,
          controller: controller,
          pageSize: 4,
          isStream: true,
        ),
      );
  }
}

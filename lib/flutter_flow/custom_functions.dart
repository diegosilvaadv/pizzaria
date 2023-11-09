import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double finalPrice(
  double pizzavalor,
  double valorSabor1,
  double valorSabor2,
  int quanty,
  double valormassa,
) {
  return pizzavalor *
      valorSabor1 *
      valorSabor2 *
      valormassa *
      quanty.toDouble();
}

double subtracao(double valor1) {
  return valor1 * -1.toDouble();
}

String temposaudacao() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Bom dia, ';
  }
  if (hour < 17) {
    return 'Boa Tarde, ';
  }
  return 'Boa Noite, ';
}

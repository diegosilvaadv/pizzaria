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
  double quanty,
) {
  return pizzavalor * valorSabor1 * valorSabor2 * quanty.toDouble();
}

double soma(
  double num1,
  double num2,
) {
  return num1 + num2;
}

double subtracao(double valor1) {
  return valor1 * -1.toDouble();
}

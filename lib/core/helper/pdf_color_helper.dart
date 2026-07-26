import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

class PdfColorHelper {
  static PdfColor toPdfColor(Color flutterColor) {
    return PdfColor.fromInt(flutterColor.value);
  }
}

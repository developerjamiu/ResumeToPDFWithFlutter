import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Contact extends pw.StatelessWidget {
  final PdfImage iconPdfImage;
  final String value;

  Contact({
    @required this.iconPdfImage,
    @required this.value,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      children: <pw.Widget>[
        pw.Image(iconPdfImage, width: 10),
        pw.SizedBox(width: 4.0),
        pw.Text(
          value,
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontSize: 10.0,
              ),
        ),
      ],
    );
  }
}

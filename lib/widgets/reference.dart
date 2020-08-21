import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pdf/widgets.dart' as pw;

class Referee extends pw.StatelessWidget {
  final String refName;
  final String jobPosition;
  final String refNumber;
  final String refEmail;

  Referee({
    @required this.refEmail,
    @required this.refName,
    @required this.jobPosition,
    @required this.refNumber,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: <pw.Widget>[
        pw.Text(
          refName.toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.SizedBox(height: 5),
        pw.Text(jobPosition),
        pw.SizedBox(height: 5),
        pw.Text('P: $refNumber'),
        pw.SizedBox(height: 5),
        pw.Text('E: $refEmail'),
      ],
    );
  }
}

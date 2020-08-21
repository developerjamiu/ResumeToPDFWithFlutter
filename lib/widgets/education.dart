import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pdf/widgets.dart' as pw;

class Education extends pw.StatelessWidget {
  final String studyField;
  final String level;
  final String educationDate;
  final String collegeName;
  final String studyDescription;

  Education({
    @required this.studyDescription,
    @required this.level,
    @required this.studyField,
    @required this.collegeName,
    @required this.educationDate,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: <pw.Widget>[
        pw.Expanded(
          flex: 4,
          child: pw.Container(
            child: pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  studyField.toUpperCase(),
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 12.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                ),
                pw.Text(
                  level.toUpperCase(),
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 12.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                ),
                pw.Text(educationDate),
              ],
            ),
          ),
        ),
        pw.SizedBox(width: 10.0),
        pw.Expanded(
          flex: 6,
          child: pw.Container(
            child: pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  collegeName.toUpperCase(),
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 12.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                ),
                pw.Text(
                  studyDescription,
                  textAlign: pw.TextAlign.justify,
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 10.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

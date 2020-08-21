import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pdf/widgets.dart' as pw;

class WorkExperience extends pw.StatelessWidget {
  final String jobPosition;
  final String jobTitle;
  final String jobDate;
  final String companyName;
  final String jobDescription;

  WorkExperience({
    @required this.jobPosition,
    @required this.jobTitle,
    @required this.jobDate,
    @required this.companyName,
    @required this.jobDescription,
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
                pw.ClipRect(
                  child: pw.Text(
                    jobPosition.toUpperCase(),
                    tightBounds: true,
                    style: pw.Theme.of(context).defaultTextStyle.copyWith(
                          fontSize: 12.0,
                          fontWeight: pw.FontWeight.bold,
                        ),
                  ),
                ),
                pw.Text(
                  jobTitle.toUpperCase(),
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 12.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                ),
                pw.Text(jobDate),
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
                  companyName.toUpperCase(),
                  style: pw.Theme.of(context).defaultTextStyle.copyWith(
                        fontSize: 12.0,
                        fontWeight: pw.FontWeight.bold,
                      ),
                ),
                pw.Text(
                  jobDescription,
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

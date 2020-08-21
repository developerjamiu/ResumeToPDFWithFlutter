import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Skill extends pw.StatelessWidget {
  final String skillName;
  final int skillLevel;

  Skill({
    @required this.skillLevel,
    @required this.skillName,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: <pw.Widget>[
        pw.Text(skillName),
        SkillLevel(skillLevel),
      ],
    );
  }
}

class SkillLevel extends pw.StatelessWidget {
  final int skillLevel;

  SkillLevel(this.skillLevel);

  @override
  pw.Widget build(pw.Context context) {
    return pw.Stack(
      children: <pw.Widget>[
        pw.Container(
          width: 50,
          height: 5,
          color: PdfColor.fromInt(0xffaaaaaa),
        ),
        pw.Container(
          width: (10.0 * (skillLevel > 5 ? 5 : skillLevel)),
          height: 5,
          color: PdfColor.fromInt(0xff343434),
        ),
      ],
    );
  }
}

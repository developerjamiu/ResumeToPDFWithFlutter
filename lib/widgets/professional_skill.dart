import 'package:pdf/widgets.dart' as pw;
import 'package:printing_example/widgets/skills.dart';

class ProfessionalSkill extends pw.StatelessWidget {
  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: <pw.Widget>[
        pw.Text(
          'Professional Skills'.toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
        Skill(skillName: 'Skill 1', skillLevel: 4),
        pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
        Skill(skillName: 'Skill 2', skillLevel: 3),
        pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
        Skill(skillName: 'Skill 3', skillLevel: 2),
        pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
        Skill(skillName: 'Skill 4', skillLevel: 1),
      ],
    );
  }
}

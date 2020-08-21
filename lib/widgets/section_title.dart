import 'package:pdf/widgets.dart' as pw;

class SectionTitle extends pw.StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: <pw.Widget>[
        pw.Text(
          title.toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Divider(),
      ],
    );
  }
}

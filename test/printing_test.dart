import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:pdf/pdf.dart';
import 'package:printing_example/resume.dart';

void main() {
  testWidgets('Pdf Generate the document', (WidgetTester tester) async {
    final Uint8List doc = await generateResume(PdfPageFormat.a4);

    final File file = File('document.pdf');
    file.writeAsBytesSync(doc);
  });
}

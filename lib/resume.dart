import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing_example/widgets/contact.dart';
import 'package:printing_example/widgets/education.dart';
import 'package:printing_example/widgets/professional_skill.dart';
import 'package:printing_example/widgets/reference.dart';
import 'package:printing_example/widgets/section_title.dart';
import 'package:printing_example/widgets/work_experience.dart';

Future<Uint8List> generateResume(PdfPageFormat format) async {
  final pw.Document doc = pw.Document(title: 'PDF Title', author: 'PDF Author');

  final PdfImage profileImage = PdfImage.file(
    doc.document,
    bytes: (await rootBundle.load('assets/profile.png')).buffer.asUint8List(),
  );

  final PdfImage phone = PdfImage.file(
    doc.document,
    bytes: (await rootBundle.load('assets/phone.png')).buffer.asUint8List(),
  );

  final PdfImage address = PdfImage.file(
    doc.document,
    bytes: (await rootBundle.load('assets/location.png')).buffer.asUint8List(),
  );

  final PdfImage email = PdfImage.file(
    doc.document,
    bytes: (await rootBundle.load('assets/email.png')).buffer.asUint8List(),
  );

  final PdfImage website = PdfImage.file(
    doc.document,
    bytes: (await rootBundle.load('assets/network.png')).buffer.asUint8List(),
  );

  doc.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(children: <pw.Widget>[
          pw.Row(
            children: <pw.Widget>[
              pw.Expanded(
                flex: 1,
                child: pw.Image(profileImage, height: 120),
              ),
              pw.SizedBox(width: 20),
              pw.Expanded(
                flex: 2,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: <pw.Widget>[
                    pw.Text(
                      'Victor Samuel',
                      style: pw.Theme.of(context).defaultTextStyle.copyWith(
                            fontSize: 24.0,
                            fontWeight: pw.FontWeight.bold,
                          ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Text(
                      'Creative Director',
                      style: pw.Theme.of(context).defaultTextStyle.copyWith(
                            fontSize: 18.0,
                          ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate. consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate.',
                      textAlign: pw.TextAlign.justify,
                      style: pw.Theme.of(context).defaultTextStyle.copyWith(
                            fontSize: 10.0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 10),
          pw.Row(
            children: <pw.Widget>[
              pw.Expanded(
                flex: 7,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: <pw.Widget>[
                    SectionTitle('Work Experience'),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    WorkExperience(
                      jobPosition: 'AssistantDirectorImage',
                      jobTitle: 'Flutter Developer',
                      jobDate: '2015 - 2019',
                      companyName: 'Ernst and Young',
                      jobDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate.',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    WorkExperience(
                      jobPosition: 'Senior',
                      jobTitle: 'Flutter Developer',
                      jobDate: '2015 - 2019',
                      companyName: 'Ernst and Young',
                      jobDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate.',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    WorkExperience(
                      jobPosition: 'Senior',
                      jobTitle: 'Flutter Developer',
                      jobDate: '2015 - 2019',
                      companyName: 'Ernst and Young',
                      jobDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate.',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    WorkExperience(
                      jobPosition: 'Senior',
                      jobTitle: 'Flutter Developer',
                      jobDate: '2015 - 2019',
                      companyName: 'Ernst and Young',
                      jobDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque minima voluptatem laudantium molestias nemo tempore voluptate.',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 20)),
                    SectionTitle('Education'),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    Education(
                      studyField: 'Study Field',
                      level: 'Title Here',
                      educationDate: '2015 - 2019',
                      collegeName: 'Some College',
                      studyDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet consectetur adipisicing elit',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    Education(
                      studyField: 'Study Field',
                      level: 'Title Here',
                      educationDate: '2015 - 2019',
                      collegeName: 'Some College',
                      studyDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet consectetur adipisicing elit',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    Education(
                      studyField: 'Study Field',
                      level: 'Title Here',
                      educationDate: '2015 - 2019',
                      collegeName: 'Some College',
                      studyDescription:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet consectetur adipisicing elit',
                    ),
                  ],
                ),
              ),
              pw.SizedBox(width: 10.0),
              pw.Expanded(
                flex: 3,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: <pw.Widget>[
                    SectionTitle('Contact'),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    Contact(
                      iconPdfImage: email,
                      value: 'jahmeyou.okalwaon@gmail.com',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
                    Contact(
                      iconPdfImage: phone,
                      value: '08000000000',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
                    Contact(
                      iconPdfImage: website,
                      value: 'www.dsjhf.com',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 5)),
                    Contact(
                      iconPdfImage: address,
                      value: '21, Saka Street, Manje Road, Lagos',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 20)),
                    SectionTitle('References'),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    Referee(
                      refName: 'Jonathan Doe',
                      jobPosition: 'Job Position',
                      refNumber: '+234819373635s',
                      refEmail: 'jahmeyou@gmail.com',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 15)),
                    Referee(
                      refName: 'Jonathan Doe',
                      jobPosition: 'Job Position',
                      refNumber: '+234819373635s',
                      refEmail: 'jahmeyou@gmail.com',
                    ),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    SectionTitle('Skills'),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    ProfessionalSkill(),
                    pw.Padding(padding: pw.EdgeInsets.only(top: 10)),
                    ProfessionalSkill(),
                  ],
                ),
              ),
            ],
          )
        ]);
      },
    ),
  );
  return doc.save();
}
